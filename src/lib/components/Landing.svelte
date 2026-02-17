<script lang="ts">
    import Navbar from "./Navbar.svelte";
    import Hero from "./Hero.svelte";
    import Features from "./Features.svelte";
    import Waitlist from "./Waitlist.svelte";

    export let onLogin: () => void;
</script>

<div
    class="font-sans antialiased text-gray-900 bg-white min-h-screen flex flex-col"
>
    <Navbar {onLogin} />
    <main class="flex-grow">
        <Hero onDemo={onLogin} />
        <Features />
        <Waitlist />
    </main>

    <footer class="bg-primary py-12 border-t border-white/10">
        <div
            class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 flex flex-col md:flex-row justify-between items-center gap-6"
        >
            <img
                src="/logo.svg"
                alt="Lexacta"
                class="h-10 w-auto hover:opacity-100 transition-all shadow-sm"
            />
            <div
                class="text-gray-400 text-sm flex flex-col md:flex-row items-center gap-2 md:gap-6 text-center md:text-right"
            >
                <span>&copy; 2026 Lexacta. Todos los derechos reservados.</span>
                <span class="hidden md:inline text-gray-600">|</span>
                <span>
                    Desarrollado por <a
                        href="https://brikzen.ar"
                        target="_blank"
                        rel="noopener noreferrer"
                        class="text-accent hover:text-white transition-colors font-medium"
                        >Brikzen.ar</a
                    >
                </span>
            </div>
        </div>
    </footer>
</div>
