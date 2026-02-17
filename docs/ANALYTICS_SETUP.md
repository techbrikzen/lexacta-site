# Integración de Google Analytics 4 (GA4)

Hemos implementado Google Analytics de forma **centralizada** mediante un componente reutilizable.

## Configuración Actual

El componente principal se encuentra en:  
`src/lib/components/GoogleAnalytics.svelte`

El ID de seguimiento configurado por defecto es: **G-TV0H78HHCF**

## Cómo Usarlo

El componente ya está integrado en `App.svelte`, por lo que **se carga automáticamente en todas las páginas** de la aplicación.

```svelte
<!-- src/App.svelte -->
<script>
  import GoogleAnalytics from "./lib/components/GoogleAnalytics.svelte";
</script>

<!-- Se renderiza en el <head> automáticamente -->
<GoogleAnalytics />
```

### Personalización (Opcional)

Si necesitas usar un ID diferente en otra parte o cambiarlo dinámicamente, puedes pasar la propiedad `trackingId`:

```svelte
<GoogleAnalytics trackingId="G-OTRO-ID" />
```

## Separación de Entornos

El componente detecta automáticamente si estás en un entorno local (`localhost` o `127.0.0.1`).

- **Desarrollo (Local):**
    - Se activa el `debug_mode: true`. Los eventos aparecerán en **DebugView** en Google Analytics en lugar de los informes estándar.
    - Se envía el parámetro `traffic_type: 'development'`.
- **Producción:**
    - Se envían los datos normalmente.
    - `traffic_type: 'production'`.

Esto permite probar cambios sin contaminar las métricas reales de usuarios.

## Verificación

1.  Abre la consola de desarrollador del navegador (F12).
2.  Escribe `dataLayer` y presiona Enter.
3.  Deberías ver un array con eventos de `gtag`.
