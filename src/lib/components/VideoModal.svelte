<script lang="ts">
  import { X } from "lucide-svelte";
  import { fade, scale } from "svelte/transition";
  import { createEventDispatcher } from 'svelte';

  export let show = false;
  // Local promotional video
  export let videoUrl = "/lexcta_promo1.mp4"; 

  const dispatch = createEventDispatcher();

  function close() {
    show = false;
    dispatch('close');
  }

  // Handle Escape key
  function handleKeydown(event: KeyboardEvent) {
    if (event.key === 'Escape' && show) {
      close();
    }
  }
</script>

<svelte:window on:keydown={handleKeydown} />

{#if show}
  <!-- Backdrop -->
  <div 
    class="fixed inset-0 z-[100] bg-primary/95 backdrop-blur-sm flex items-center justify-center p-4 sm:p-6"
    transition:fade={{ duration: 200 }}
    on:click|self={close}
    on:keydown={handleKeydown}
    role="button"
    tabindex="-1"
  >
    <!-- Modal Content -->
    <div 
      class="relative w-full max-w-5xl bg-black rounded-2xl shadow-2xl overflow-hidden aspect-video border border-white/10"
      transition:scale={{ start: 0.95, duration: 200 }}
    >
      
      <!-- Close Button -->
      <button 
        on:click={close}
        class="absolute top-4 right-4 z-10 bg-black/50 hover:bg-black/80 text-white p-2 rounded-full backdrop-blur-md transition-colors focus:outline-none focus:ring-2 focus:ring-white/50"
        aria-label="Cerrar video"
      >
        <X size={24} />
      </button>

      <!-- Video Player -->
      <!-- svelte-ignore a11y_media_has_caption -->
      <video 
        src={videoUrl} 
        class="w-full h-full object-contain bg-black border-0"
        controls
        autoplay
        title="Lexacta Demo Video"
      ></video>
      
    </div>
  </div>
{/if}
