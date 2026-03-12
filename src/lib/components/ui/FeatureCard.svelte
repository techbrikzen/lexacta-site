<script lang="ts">
  import type { ComponentType } from "svelte";

  export let title: string;
  export let text: string;
  export let icon: ComponentType;
  export let darkTheme: boolean = false;
</script>

<div class={`rounded-2xl p-8 transition-all duration-300 group border ${darkTheme ? 'bg-white/5 backdrop-blur-sm border-white/10 hover:bg-white/10' : 'bg-base border-primary/5 shadow-sm hover:shadow-lg'}`}>
  
  <div class={`w-14 h-14 rounded-xl flex items-center justify-center mb-6 group-hover:scale-110 transition-transform ${darkTheme ? 'bg-accent/20 text-accent' : 'bg-primary/5 text-accent'}`}>
    <svelte:component this={icon} size={28} />
  </div>
  
  <h3 class={`font-display font-bold text-xl md:text-2xl mb-3 ${darkTheme ? 'text-accent mb-4' : 'text-primary'}`}>
    {title}
  </h3>
  
  <p class={`font-body leading-relaxed ${darkTheme ? 'text-gray-300 text-lg' : 'text-text-dark/70'}`}>
    {text}
  </p>

</div>
