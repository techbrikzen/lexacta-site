<script lang="ts">
  export let variant: 'success' | 'warning' | 'danger' | 'primary' | 'accent' | 'gray' = 'primary';
  export let size: 'sm' | 'md' = 'sm';

  const baseClasses = 'inline-flex items-center font-bold tracking-wider rounded-full uppercase';

  const variantClasses = {
    success: 'bg-success/10 text-success border border-success/20',
    warning: 'bg-warning/10 text-warning border border-warning/20',
    danger: 'bg-danger/10 text-danger border border-danger/20',
    primary: 'bg-primary/10 text-primary border border-primary/20',
    accent: 'bg-accent/10 text-accent border border-accent/20',
    gray: 'bg-gray-100 text-gray-500 border border-gray-200',
  };

  const sizeClasses = {
    sm: 'px-2.5 py-0.5 text-xs',
    md: 'px-3 py-1 text-sm',
  };

  $: computedClasses = `${baseClasses} ${variantClasses[variant]} ${sizeClasses[size]}`;
</script>

<span class={computedClasses} {...$$restProps}>
  <slot />
</span>
