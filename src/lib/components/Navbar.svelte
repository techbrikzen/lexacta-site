<script lang="ts">
  import { Menu, X, Scale } from "lucide-svelte";
  import DemoButton from "./ui/DemoButton.svelte";
  let isMenuOpen = false;
</script>

<nav class="fixed top-0 w-full z-50 bg-base/90 backdrop-blur-md border-b border-gray-200 text-text-dark transition-all duration-300 font-ui">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex items-center justify-between h-20">
      <!-- Logo -->
      <a href="/" class="flex-shrink-0 flex items-center gap-2 cursor-pointer focus:outline-none hover:opacity-80 transition-opacity">
        <Scale class="text-primary w-8 h-8" />
        <span class="font-display font-bold text-2xl text-primary tracking-tight">LEXACTA</span>
      </a>

      <!-- Desktop Menu -->
      <div class="hidden md:flex items-center gap-8">
        <a href="#funcionalidades" class="text-sm font-medium hover:text-accent transition-colors">Funcionalidades</a>
        <a href="#precios" class="text-sm font-medium hover:text-accent transition-colors">Precios</a>
        <a href="#casos-de-uso" class="text-sm font-medium hover:text-accent transition-colors">Casos de uso</a>
        <a href="#faq" class="text-sm font-medium hover:text-accent transition-colors">Consultas</a>
      </div>

      <!-- CTA (Desktop) -->
      <div class="hidden md:block">
        <DemoButton size="sm" />
      </div>

      <!-- Mobile menu button -->
      <div class="md:hidden flex items-center">
        <button onclick={() => isMenuOpen = !isMenuOpen} class="text-primary hover:text-accent focus:outline-none">
          {#if isMenuOpen}
            <X size={28} />
          {:else}
            <Menu size={28} />
          {/if}
        </button>
      </div>
    </div>
  </div>

  <!-- Mobile Menu -->
  {#if isMenuOpen}
    <div class="md:hidden bg-base border-b border-gray-200">
      <div class="px-4 pt-2 pb-6 space-y-2 shadow-inner">
        <a href="#funcionalidades" class="block px-3 py-3 rounded-md text-base font-medium hover:bg-gray-100 transition-colors">Funcionalidades</a>
        <a href="#precios" class="block px-3 py-3 rounded-md text-base font-medium hover:bg-gray-100 transition-colors">Precios</a>
        <a href="#casos-de-uso" class="block px-3 py-3 rounded-md text-base font-medium hover:bg-gray-100 transition-colors">Casos de uso</a>
        <a href="#faq" class="block px-3 py-3 rounded-md text-base font-medium hover:bg-gray-100 transition-colors">Consultas</a>
        <a href="https://www.brikzen.ar/contacto/" target="_blank" rel="noopener noreferrer" class="mt-4 block w-full text-center bg-accent text-white px-6 py-3 rounded-md font-semibold shadow-md">
          Solicitar demo
        </a>
      </div>
    </div>
  {/if}
</nav>
