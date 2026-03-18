<script lang="ts">
  export let size: 'sm' | 'md' | 'lg' = 'md';
  export let width: 'auto' | 'full' = 'auto';
  export let extraClasses: string = '';
  export let label: string = 'Solicitar demo';

  import Button from "./Button.svelte";

  const DEMO_URL = "https://www.brikzen.ar/contacto/";
</script>

<Button href={DEMO_URL} variant="accent" {size} {width} {extraClasses} target="_blank" rel="noopener noreferrer">
  {label}
</Button>
