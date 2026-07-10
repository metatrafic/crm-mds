# CRM MDS — versión móvil instalable

Esta actualización convierte la web en una PWA (Progressive Web App).

## Archivos que debes subir a la raíz del repositorio

- `index.html`
- `manifest.webmanifest`
- `service-worker.js`
- carpeta `icons/`

**No sustituyas tu `config.js` actual**, porque ya contiene la conexión correcta con Supabase.

## Publicación

1. En GitHub, abre el repositorio `crm-mds`.
2. Sustituye `index.html`.
3. Sube `manifest.webmanifest`, `service-worker.js` y la carpeta `icons`.
4. Confirma los cambios.
5. Espera a que GitHub Pages termine el despliegue.
6. Abre la aplicación y recarga sin caché.

## Instalación

### Android
Abre la web en Chrome. Aparecerá el botón **Instalar**. También puedes usar el menú de Chrome → **Instalar aplicación**.

### iPhone / iPad
Abre la web en Safari → botón **Compartir** → **Añadir a pantalla de inicio**.

La aplicación se abrirá sin la barra del navegador, con icono propio y diseño a pantalla completa.
