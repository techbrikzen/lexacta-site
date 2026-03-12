<script lang="ts">
  import { ChevronDown } from "lucide-svelte";
  
  export let question: string;
  export let answer: string;
  export let isOpen: boolean = false;
  export let onToggle: () => void;
</script>

<div class="bg-white border border-gray-200 rounded-2xl overflow-hidden shadow-sm hover:shadow-md transition-shadow">
  <button 
    class="w-full px-6 py-5 text-left flex justify-between items-center focus:outline-none"
    onclick={onToggle}
  >
    <span class="font-ui font-bold text-lg text-primary pr-8">{question}</span>
    <span class={`text-primary transition-transform duration-300 ${isOpen ? 'rotate-180' : ''}`}>
      <ChevronDown size={24} />
    </span>
  </button>
  
  {#if isOpen}
    <div class="px-6 pb-6 animate-fade-in-up">
      <p class="font-body text-text-dark/80 leading-relaxed text-lg border-t border-gray-100 pt-4">
        {answer}
      </p>
    </div>
  {/if}
</div>
