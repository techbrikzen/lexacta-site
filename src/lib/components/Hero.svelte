<script lang="ts">
    import { ArrowRight, CheckCircle2 } from "lucide-svelte";
    export let onDemo: () => void;
</script>

<div class="relative bg-primary pt-32 pb-20 lg:pt-48 lg:pb-32 overflow-hidden">
    <!-- Background Elements -->
    <div class="absolute inset-0 overflow-hidden">
        <div
            class="absolute -top-[30%] -right-[10%] w-[800px] h-[800px] rounded-full bg-accent/5 blur-[120px]"
        ></div>
        <div
            class="absolute -bottom-[20%] -left-[10%] w-[600px] h-[600px] rounded-full bg-blue-500/5 blur-[100px]"
        ></div>
        <div
            class="absolute top-0 w-full h-px bg-gradient-to-r from-transparent via-white/10 to-transparent"
        ></div>
    </div>

    <div
        class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 flex flex-col items-center text-center"
    >
        <!-- Badge -->
        <div
            class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-white/5 border border-white/10 mb-8 backdrop-blur-sm"
        >
            <span class="flex h-2 w-2 rounded-full bg-accent animate-pulse"
            ></span>
            <span class="text-sm font-medium text-gray-300"
                >Inteligencia Jurídica Auditable v2.0</span
            >
        </div>

        <!-- Main Heading -->
        <h1
            class="text-5xl md:text-7xl font-bold tracking-tight text-white mb-8 leading-tight"
        >
            Gestión Jurídica <br />
            <span
                class="text-transparent bg-clip-text bg-gradient-to-r from-white to-gray-400"
                >Integral & Inteligente.</span
            >
        </h1>

        <!-- Subheading -->
        <p class="max-w-2xl text-xl text-gray-400 mb-10 leading-relaxed">
            Potencie tu firma con nuestra plataforma Enterprise. Próximamente:
            La evolución de la práctica legal con IA auditable.
        </p>

        <!-- CTAs -->
        <div class="flex flex-col sm:flex-row gap-4 w-full sm:w-auto">
            <a
                href="#registro"
                class="inline-flex items-center justify-center gap-2 bg-accent hover:bg-accent-hover text-white px-8 py-4 rounded-lg text-lg font-semibold transition-all shadow-xl shadow-accent/20 hover:shadow-accent/40 hover:-translate-y-1"
            >
                Registrar Interés
                <ArrowRight size={20} />
            </a>

            <button
                onclick={onDemo}
                class="inline-flex items-center justify-center gap-2 bg-white/5 hover:bg-white/10 border border-white/10 text-white px-8 py-4 rounded-lg text-lg font-semibold transition-all backdrop-blur-sm"
            >
                Ver Demo Interactiva
            </button>
        </div>

        <!-- Trust Indicators -->
        <div
            class="mt-16 pt-8 border-t border-white/5 w-full max-w-4xl flex flex-wrap justify-center gap-8 md:gap-16 text-gray-500"
        >
            <div class="flex items-center gap-3">
                <CheckCircle2 size={18} class="text-accent" />
                <span class="text-sm font-medium tracking-wide"
                    >SOC 2 TYPE II</span
                >
            </div>
            <div class="flex items-center gap-3">
                <CheckCircle2 size={18} class="text-accent" />
                <span class="text-sm font-medium tracking-wide"
                    >AUDITORÍA FULL</span
                >
            </div>
            <div class="flex items-center gap-3">
                <CheckCircle2 size={18} class="text-accent" />
                <span class="text-sm font-medium tracking-wide"
                    >MIGRACIÓN ASISTIDA</span
                >
            </div>
        </div>
    </div>
</div>
