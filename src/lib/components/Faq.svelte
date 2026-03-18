<script lang="ts">
  import { ChevronDown } from "lucide-svelte";
  import Accordion from "./ui/Accordion.svelte";
  
  const faqs = [
    {
      q: "¿Necesito ser experto en tecnología para usar LEXACTA?",
      a: "No. La interfaz se aprende en 15 minutos. Tenemos videos cortos y soporte en lenguaje de abogados, no de técnicos."
    },
    {
      q: "¿Los plazos que calcula LEXACTA están actualizados?",
      a: "Sí. La calculadora de indemnizaciones y el gestor de plazos se actualizan con jurisprudencia local. Además verificamos feriados judiciales automáticamente."
    },
    {
      q: "¿Puedo probarlo antes de pagar?",
      a: "Sí. Tenés 7 días gratis sin compromiso y una garantía de satisfacción de 30 días."
    },
    {
      q: "¿Es segura la información de mis clientes?",
      a: "Toda la información está encriptada. El portal del cliente usa acceso seguro y los mensajes son encriptados de extremo a extremo."
    },
    {
      q: "¿Puedo cancelar en cualquier momento?",
      a: "Sí. Sin permanencia mínima, sin penalidades. Podés cancelar cuando quieras desde el panel."
    },
    {
      q: "¿Funciona para todas las provincias argentinas?",
      a: "El módulo laboral y penal funcionan a nivel nacional. Las integraciones con sistemas judiciales cubren BA, CABA y Córdoba en la Fase 1, con más provincias en camino."
    },
    {
      q: "¿La IA reemplaza al abogado?",
      a: "No, la IA es tu asistente. Lexacta propone borradores y sugiere estrategias, pero el control final y el criterio profesional siempre son tuyos."
    },
    {
      q: "¿Sirve para estudios pequeños o solo es 'Enterprise'?",
      a: "Está pensada tanto para abogados independientes como para estudios jurídicos medianos y grandes. Se adapta perfectamente a tu volumen de casos y clientes."
    },
    {
      q: "¿Cómo se valida lo que genera la IA?",
      a: "Lexacta utiliza IA auditable. Cada sugerencia o borrador tiene trazabilidad directa a los documentos y fojas originales para que puedas revisar rápidamente."
    }
  ];

  let openIndex = $state<number | null>(0);

  function toggleFaq(index: number) {
    openIndex = openIndex === index ? null : index;
  }
</script>

<section id="faq" class="py-24 bg-white/50">
  <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="text-center mb-16">
      <h2 class="font-display font-bold text-3xl md:text-4xl text-primary mb-4">
        Dudas comunes
      </h2>
      <p class="font-body text-xl text-text-dark/70">
        Resolvemos tus dudas principales.
      </p>
    </div>

    <div class="space-y-4">
      {#each faqs as faq, i}
        <Accordion
          question={faq.q}
          answer={faq.a}
          isOpen={openIndex === i}
          onToggle={() => toggleFaq(i)}
        />
      {/each}
    </div>
  </div>
</section>
