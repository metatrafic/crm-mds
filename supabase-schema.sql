create table if not exists public.crm_states (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.crm_states enable row level security;

drop policy if exists "Users can read own CRM" on public.crm_states;
create policy "Users can read own CRM"
on public.crm_states for select
using (auth.uid() = user_id);

drop policy if exists "Users can insert own CRM" on public.crm_states;
create policy "Users can insert own CRM"
on public.crm_states for insert
with check (auth.uid() = user_id);

drop policy if exists "Users can update own CRM" on public.crm_states;
create policy "Users can update own CRM"
on public.crm_states for update
using (auth.uid() = user_id)
with check (auth.uid() = user_id);
