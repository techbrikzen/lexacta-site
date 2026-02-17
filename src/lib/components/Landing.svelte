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
                class="h-10 w-auto bg-white rounded-lg px-3 py-1.5 opacity-90 hover:opacity-100 transition-all shadow-sm"
            />
            <div class="text-gray-400 text-sm">
                &copy; 2026 Lexacta LegalTech. Todos los derechos reservados.
            </div>
        </div>
    </footer>
</div>
