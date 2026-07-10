# CRM MDS

Aplicación web del CRM MDS preparada para:

- filtrar los clientes por la empresa elegida al crear o editar una actividad;
- iniciar sesión con correo y contraseña;
- guardar y sincronizar todos los datos mediante Supabase;
- publicarse como web estática en GitHub Pages.

## 1. Crear el proyecto de Supabase

1. Crea un proyecto en Supabase.
2. Abre **SQL Editor**, pega el contenido de `supabase-schema.sql` y ejecútalo.
3. En **Authentication > Users**, crea los usuarios que podrán entrar.
4. En **Project Settings > API**, copia:
   - Project URL
   - Publishable/anon key
5. Edita `config.js` y sustituye los dos valores de ejemplo.

La clave `anon` o publicable puede estar en el navegador. No uses nunca la clave `service_role` en esta aplicación.

## 2. Migrar los datos actuales

La primera vez que entres desde el navegador donde ya usabas el CRM, la aplicación tomará la copia local existente y la guardará en Supabase. Después, cualquier dispositivo que entre con el mismo usuario verá la misma información.

También puedes usar **Ajustes > Descargar copia completa (JSON)** en la versión anterior y luego **Importar copia (JSON)** en esta versión.

## 3. Subir a GitHub

Crea un repositorio y sube todos los archivos de esta carpeta:

```bash
git init
git add .
git commit -m "Publicar CRM MDS con Supabase"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/TU-REPOSITORIO.git
git push -u origin main
```

## 4. Activar GitHub Pages

En el repositorio abre **Settings > Pages** y elige:

- Source: **Deploy from a branch**
- Branch: **main**
- Folder: **/ (root)**

La aplicación quedará disponible en la dirección de GitHub Pages del repositorio.

## Seguridad

La tabla tiene Row Level Security. Cada usuario autenticado únicamente puede leer y modificar su propia fila. Para que varias personas compartan exactamente el mismo CRM, deben entrar con el mismo usuario o se debe ampliar posteriormente el modelo con equipos y permisos.
