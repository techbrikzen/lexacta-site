<script lang="ts">
    import Navbar from "./Navbar.svelte";
    import Hero from "./Hero.svelte";
    import LaunchBanner from "./LaunchBanner.svelte";
    import Problem from "./Problem.svelte";
    import FeaturesTabs from "./FeaturesTabs.svelte";
    import Assistants from "./Assistants.svelte";
    import Integrations from "./Integrations.svelte";
    import Pricing from "./Pricing.svelte";
    import Roadmap from "./Roadmap.svelte";
    import Faq from "./Faq.svelte";
    import FinalCta from "./FinalCta.svelte";
    import Footer from "./Footer.svelte";

    export let onLogin: () => void;
</script>

<div class="antialiased min-h-screen flex flex-col relative w-full overflow-x-hidden pt-20">
    <!-- Navbar (Sticky at top) -->
    <Navbar {onLogin} />

    <main class="flex-grow w-full">
        <!-- Main Hero Section -->
        <Hero onDemo={onLogin} />
        
        <!-- Launch Offer Banner -->
        <LaunchBanner />

        <!-- Agitation / Problem Section -->
        <div id="casos-de-uso">
          <Problem />
        </div>

        <!-- Solutions / Modules -->
        <FeaturesTabs />

        <!-- Highlighted AI Assistants -->
        <Assistants />

        <!-- Integrations -->
        <Integrations />

        <!-- Pricing -->
        <Pricing />

        <!-- Roadmap -->
        <Roadmap />

        <!-- FAQ -->
        <Faq />
        
        <!-- Final Call to Action -->
        <div id="registro">
          <FinalCta />
        </div>
    </main>

    <!-- Footer with legal disclaimer -->
    <Footer />
</div>
