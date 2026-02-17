<script lang="ts">
    export let trackingId: string = "G-TV0H78HHCF";

    // Declaración para type-safety si fuera necesario,
    // pero window.dataLayer es dinámico.
</script>

<svelte:head>
    {#if trackingId}
        <script
            async
            src="https://www.googletagmanager.com/gtag/js?id={trackingId}"
        ></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag("js", new Date());

            // Detectar si es entorno local
            var isLocal =
                window.location.hostname === "localhost" ||
                window.location.hostname === "127.0.0.1";

            gtag("config", "{trackingId}", {
                debug_mode: isLocal,
                traffic_type: isLocal ? "development" : "production",
            });
        </script>
    {/if}
</svelte:head>
