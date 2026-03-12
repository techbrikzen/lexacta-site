<script lang="ts">
  import { Scale, Linkedin, Instagram, MessageCircle } from "lucide-svelte";
</script>

<footer class="bg-primary text-white pt-16 pb-8 border-t border-white/10">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    
    <div class="grid grid-cols-1 md:grid-cols-4 gap-12 mb-16">
      
      <!-- Brand & Info -->
      <div class="col-span-1 md:col-span-1 flex flex-col items-start">
        <a href="/" class="flex flex-col items-start gap-2 mb-6 hover:opacity-80 transition-opacity">
          <div class="flex items-center gap-2">
            <Scale class="text-accent w-8 h-8" />
            <span class="font-display font-bold text-2xl tracking-tight">LEXACTA</span>
          </div>
        </a>
        <p class="font-body text-sm text-gray-400 mb-6 leading-relaxed">
          La plataforma legal inteligente diseñada para que trabajes con confianza, en cualquier fuero.
        </p>

        <!-- Socials -->
        <div class="flex gap-4">
          <a href="#" class="w-10 h-10 rounded-full bg-white/5 flex items-center justify-center text-gray-400 hover:bg-white/10 hover:text-accent transition-colors">
            <Linkedin size={20} />
          </a>
          <a href="#" class="w-10 h-10 rounded-full bg-white/5 flex items-center justify-center text-gray-400 hover:bg-white/10 hover:text-accent transition-colors">
            <Instagram size={20} />
          </a>
          <a href="#" class="w-10 h-10 rounded-full bg-white/5 flex items-center justify-center text-gray-400 hover:bg-white/10 hover:text-green-400 transition-colors">
            <MessageCircle size={20} />
          </a>
        </div>
      </div>

      <!-- Links Column 1 -->
      <div class="col-span-1 md:col-span-1">
        <h4 class="font-ui font-bold text-white mb-6 uppercase tracking-wider text-sm">Producto</h4>
        <ul class="space-y-4 font-body text-gray-400 text-sm">
          <li><a href="#funcionalidades" class="hover:text-accent transition-colors">Funcionalidades</a></li>
          <li><a href="#precios" class="hover:text-accent transition-colors">Planes y Precios</a></li>
          <li><a href="#casos-de-uso" class="hover:text-accent transition-colors">Casos de Uso</a></li>
          <li><a href="#faq" class="hover:text-accent transition-colors">Preguntas Frecuentes</a></li>
        </ul>
      </div>

      <!-- Links Column 2 -->
      <div class="col-span-1 md:col-span-1">
        <h4 class="font-ui font-bold text-white mb-6 uppercase tracking-wider text-sm">Legal & Ayuda</h4>
        <ul class="space-y-4 font-body text-gray-400 text-sm">
          <li><a href="#" class="hover:text-accent transition-colors">Términos y Condiciones</a></li>
          <li><a href="#" class="hover:text-accent transition-colors">Política de Privacidad</a></li>
          <li><a href="#" class="hover:text-accent transition-colors">Blog Jurídico</a></li>
          <li><a href="#" class="hover:text-accent transition-colors">Contacto Soport</a></li>
        </ul>
      </div>

      <!-- Contact Info -->
      <div class="col-span-1 md:col-span-1">
        <h4 class="font-ui font-bold text-white mb-6 uppercase tracking-wider text-sm">Comunícate</h4>
        <ul class="space-y-4 font-body text-gray-400 text-sm">
          <li class="flex flex-col">
            <span class="text-xs text-gray-500 uppercase tracking-widest mb-1">Ventas</span>
            <a href="mailto:ventas@lexacta.com" class="hover:text-accent transition-colors font-medium text-white">ventas@lexacta.com</a>
          </li>
          <li class="flex flex-col">
            <span class="text-xs text-gray-500 uppercase tracking-widest mb-1">WhatsApp Directo</span>
            <a href="#" class="hover:text-accent transition-colors font-medium text-white">+54 9 11 1234-5678</a>
          </li>
        </ul>
      </div>

    </div>

    <!-- Divider & Bottom Info -->
    <div class="border-t border-white/10 pt-8 flex flex-col items-center text-center">
      <div class="max-w-3xl mb-6 p-4 rounded-lg bg-white/5 border border-white/10 shadow-inner">
        <p class="font-body text-xs text-gray-400 leading-relaxed uppercase tracking-widest">
          LEXACTA no es un estudio jurídico ni brinda asesoramiento legal. Es una herramienta de asistencia tecnológica profesional diseñada exclusivamente para abogados matriculados habilitados para ejercer.
        </p>
      </div>
      <p class="font-ui text-xs text-gray-500">
        &copy; 2026 LEXACTA. Todos los derechos reservados. | Desarrollado por Brikzen.ar
      </p>
    </div>

  </div>
</footer>
