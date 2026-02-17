<script lang="ts">
    import { Mail, ArrowRight, CheckCircle2 } from "lucide-svelte";

    let email = "";
    let name = "";
    let submitted = false;

    function handleSubmit(e: Event) {
        e.preventDefault();
        const form = e.target as HTMLFormElement;
        const formData = new FormData(form);

        // Netlify Forms AJAX submission
        fetch("/", {
            method: "POST",
            headers: { "Content-Type": "application/x-www-form-urlencoded" },
            body: new URLSearchParams(formData as any).toString(),
        })
            .then(() => {
                submitted = true;
                setTimeout(() => {
                    submitted = false;
                    email = "";
                    name = "";
                }, 5000);
            })
            .catch((error) => console.error("Error:", error));
    }
</script>

<section id="registro" class="py-24 bg-primary relative overflow-hidden">
    <!-- Decorative elements -->
    <div
        class="absolute top-0 right-0 -mr-20 -mt-20 w-96 h-96 bg-accent/10 rounded-full blur-3xl"
    ></div>
    <div
        class="absolute bottom-0 left-0 -ml-20 -mb-20 w-96 h-96 bg-blue-500/10 rounded-full blur-3xl"
    ></div>

    <div
        class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10 text-center"
    >
        <span
            class="inline-block py-1 px-3 rounded-full bg-accent/20 text-accent text-sm font-bold tracking-wide mb-6"
        >
            PRÓXIMAMENTE
        </span>

        <h2 class="text-4xl md:text-5xl font-bold text-white mb-6">
            Sé el primero en experimentar <br /> el futuro de la gestión jurídica.
        </h2>

        <p class="text-xl text-gray-400 mb-12 max-w-2xl mx-auto">
            Lanzamiento oficial en Q3 2026. Regístrate ahora para obtener acceso
            anticipado y tarifas preferenciales de fundador.
        </p>

        {#if submitted}
            <div
                class="bg-green-500/20 border border-green-500/50 rounded-xl p-8 max-w-md mx-auto animate-in fade-in zoom-in duration-300"
            >
                <CheckCircle2 class="w-16 h-16 text-green-500 mx-auto mb-4" />
                <h3 class="text-2xl font-bold text-white mb-2">
                    ¡Gracias por tu interés!
                </h3>
                <p class="text-gray-300">
                    Te hemos añadido a nuestra lista prioritaria. Pronto
                    recibirás noticias nuestras.
                </p>
            </div>
        {:else}
            <!-- 
                Formulario configurado para Netlify Forms. 
                Si usas otro proveedor (ej. Formspree), cambia 'action' y 'method'.
            -->
            <form
                name="waitlist"
                method="POST"
                data-netlify="true"
                onsubmit={handleSubmit}
                class="bg-white/5 border border-white/10 rounded-2xl p-8 backdrop-blur-sm max-w-md mx-auto shadow-2xl"
            >
                <input type="hidden" name="form-name" value="waitlist" />

                <div class="space-y-4 text-left">
                    <div>
                        <label
                            for="name"
                            class="block text-sm font-medium text-gray-300 mb-1"
                            >Nombre Completo</label
                        >
                        <input
                            type="text"
                            id="name"
                            name="name"
                            bind:value={name}
                            required
                            placeholder="Dr. Juan Pérez"
                            class="w-full bg-primary-dark border border-white/10 rounded-lg px-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-accent focus:ring-1 focus:ring-accent transition-all"
                        />
                    </div>

                    <div>
                        <label
                            for="email"
                            class="block text-sm font-medium text-gray-300 mb-1"
                            >Correo Electrónico</label
                        >
                        <div class="relative">
                            <Mail
                                class="absolute left-3 top-3.5 text-gray-500 w-5 h-5"
                            />
                            <input
                                type="email"
                                id="email"
                                name="email"
                                bind:value={email}
                                required
                                placeholder="juan@estudio.com"
                                class="w-full bg-primary-dark border border-white/10 rounded-lg pl-10 pr-4 py-3 text-white placeholder-gray-500 focus:outline-none focus:border-accent focus:ring-1 focus:ring-accent transition-all"
                            />
                        </div>
                    </div>

                    <button
                        type="submit"
                        class="w-full bg-accent hover:bg-accent-hover text-white font-bold py-3.5 rounded-lg transition-all shadow-lg shadow-accent/20 hover:shadow-accent/40 flex items-center justify-center gap-2 mt-2 group"
                    >
                        Unirme a la Lista de Espera
                        <ArrowRight
                            class="w-5 h-5 group-hover:translate-x-1 transition-transform"
                        />
                    </button>
                </div>
                <p class="text-xs text-center text-gray-500 mt-6">
                    Sin spam. Solo actualizaciones importantes sobre el
                    lanzamiento.
                </p>
            </form>
        {/if}
    </div>
</section>
