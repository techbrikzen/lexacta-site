<script lang="ts">
  import { Quote } from "lucide-svelte";

  const testimonials = [
    {
      quote: "Antes evitaba los casos laborales por miedo a los plazos. Con LEXACTA, expandí los servicios de mi estudio un 40% y duermo tranquilo.",
      author: "Dra. Valeria M.",
      role: "Especialista en Familia (CABA)"
    },
    {
      quote: "La función de 'evitar caducidad' ya me salvó de dos multas. Es como tener un procurador revisando mis causas 24/7.",
      author: "Dr. Leandro S.",
      role: "Socio Fundador (Córdoba)"
    },
    {
      quote: "Redacto escritos un 60% más rápido porque el asistente me da la estructura y los términos exactos del fuero que necesito.",
      author: "Dra. Carolina G.",
      role: "Civil y Comercial (PBA)"
    }
  ];
</script>

<section class="py-24 bg-white/50 border-t border-gray-100">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="text-center mb-16">
      <h2 class="font-display font-bold text-3xl md:text-4xl text-primary mb-4">
        Colegas que ya confían en <span class="text-accent italic">LEXACTA</span>
      </h2>
      <p class="font-body text-xl text-text-dark/70">
        Descubre cómo están transformando su práctica diaria recomendados por más de 1,200 profesionales.
      </p>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
      {#each testimonials as {quote, author, role}}
        <div class="bg-white p-8 rounded-2xl shadow-sm border border-gray-100 hover:shadow-md transition-shadow flex flex-col justify-between">
          <div>
            <Quote class="text-accent w-10 h-10 mb-4 opacity-50" />
            <p class="font-body text-text-dark/80 leading-relaxed text-lg mb-6 italic">
              "{quote}"
            </p>
          </div>
          <div>
            <p class="font-ui font-bold text-primary">{author}</p>
            <p class="font-ui text-sm text-gray-500">{role}</p>
          </div>
        </div>
      {/each}
    </div>
  </div>
</section>
