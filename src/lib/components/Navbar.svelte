<script lang="ts">
  import { ShieldCheck } from "lucide-svelte";
  export let onLogin: () => void;
</script>

<nav
  class="fixed w-full z-50 bg-primary/95 backdrop-blur-md border-b border-white/10 text-white"
>
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex items-center justify-between h-20">
      <!-- Logo -->
      <button
        class="flex-shrink-0 flex items-center gap-2 cursor-pointer focus:outline-none"
        onclick={() => location.reload()}
        onkeydown={(e) => e.key === "Enter" && location.reload()}
        aria-label="Reload page"
      >
        <img src="/logo.svg" alt="Lexacta" class="h-10 w-auto" />
      </button>

      <!-- Desktop Menu (Hidden for now) -->
      <div class="hidden md:block">
        <div class="ml-10 flex items-baseline space-x-8">
          <!-- Links removed as per request -->
        </div>
      </div>

      <!-- CTA -->
      <div>
        <button
          onclick={onLogin}
          class="bg-accent hover:bg-accent-hover text-white px-6 py-2.5 rounded-md text-sm font-semibold transition-all shadow-lg shadow-accent/20 hover:shadow-accent/40"
        >
          Acceso Clientes
        </button>
      </div>
    </div>
  </div>
</nav>
