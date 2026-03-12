<script lang="ts">
  import { MessageCircle } from "lucide-svelte";
  
  // URL to WhatsApp with pre-filled message
  const whatsappUrl = "https://wa.me/5491112345678?text=Hola,%20vengo%20de%20la%20web.%20Quiero%20info%20sobre%20Lexacta.";
</script>

<a 
  href={whatsappUrl} 
  target="_blank" 
  rel="noopener noreferrer"
  class="fixed bottom-6 right-6 z-50 bg-[#25D366] text-white p-4 rounded-full shadow-2xl hover:bg-[#128C7E] hover:scale-110 hover:-translate-y-1 transition-all duration-300 group flex items-center justify-center focus:outline-none focus:ring-4 focus:ring-[#25D366]/50"
  aria-label="Chatear por WhatsApp"
>
  <MessageCircle size={32} class="animate-pulse group-hover:animate-none" />
  
  <!-- Tooltip that appears on hover/focus -->
  <span class="absolute right-full mr-4 bg-white text-text-dark font-ui text-sm font-bold px-3 py-1.5 rounded-lg shadow-lg opacity-0 -translate-x-2 group-hover:opacity-100 group-hover:translate-x-0 transition-all pointer-events-none whitespace-nowrap before:content-[''] before:absolute before:top-1/2 before:-right-2 before:-translate-y-1/2 before:border-4 before:border-transparent before:border-l-white">
    Consultá con Ventas
  </span>
</a>
