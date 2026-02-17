# Configuración de Integración con Supabase

Para que el formulario de lista de espera funcione, necesitas conectar el sitio con tu proyecto de Supabase.

## 1. Obtener Credenciales de Supabase

1. Ve a tu proyecto en [Supabase Dashboard](https://supabase.com/dashboard).
2. Ve a **Project Settings** (icono de engranaje) > **API**.
3. Copia la **Project URL**.
4. Copia la **anon** / **public** Key.

## 2. Configurar Secretos en GitHub

Debes agregar estas credenciales como secretos en el entorno `prod` de GitHub, igual que hiciste con el FTP.

1. Ve a tu repositorio en GitHub > **Settings** > **Environments** > **prod**.
2. Agrega los siguientes secretos:
    *   `VITE_SUPABASE_URL`: Pega la URL del proyecto.
    *   `VITE_SUPABASE_ANON_KEY`: Pega la clave `anon`/`public`.

## 3. Base de Datos

Asegúrate de haber ejecutado el script SQL ubicado en `infra/prod/sql/001_create_waitlist_table.sql` en el **SQL Editor** de Supabase. Este script:
*   Crea el esquema `lxa_demo`.
*   Crea la tabla `waitlist`.
*   Configura la función segura `register_interest` para insertar datos.

## 4. Despliegue

Una vez configurados los secretos, el próximo despliegue (push a `main`) inyectará automáticamente estas variables en el sitio construido, permitiendo que el formulario se conecte a Supabase.
