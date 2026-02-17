# Guía de Configuración de Despliegue (Producción)

Este proyecto utiliza **GitHub Actions** para desplegar automáticamente en **Producción** al hacer push a la rama `main`.

## Paso 1: Crear Entorno en GitHub

1. Ve a tu repositorio en GitHub.
2. Haz clic en **Settings** (Configuración).
3. En el menú de la izquierda, busca **Environments**.
4. Haz clic en **New environment**.
5. Crea un entorno llamado: `production`

## Paso 2: Agregar Secretos al Entorno

Dentro del entorno `production` (en **Settings** > **Environments** > **production**), agrega las siguientes **Environment secrets**:

*   `FTP_SERVER`: Dirección del servidor FTP (ej. `ftp.tudominio.com`).
*   `FTP_USERNAME`: Usuario FTP.
*   `FTP_PASSWORD`: Contraseña FTP.

## Paso 3: Flujo de Trabajo

1. Todo el desarrollo se hace en ramas locales o `develop` (si la usas).
2. Cuando estés listo para subir a producción, fusiona tus cambios a `main`:
   ```bash
   git checkout main
   git merge tu-rama-feature
   git push origin main
   ```
3. GitHub Actions detectará el push a `main`, usará los secretos del entorno `production` y desplegará los cambios.
