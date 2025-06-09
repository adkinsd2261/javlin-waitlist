# Javlin Waitlist CODEX v1.2.1

## 0. Changelog & Versioning

* **v1.2.1** (2025‑06‑09)

  * Added native form snippet under §2.3
  * Replaced analytics placeholder with deferred loader & consent gating under §11
  * Appended **Snippets Annex** grouping all code blocks
* **v1.2** (2025‑06‑09)

  * Introduced Versioning Policy
  * Clarified “native `<form>`” reference in §2.3
  * Highlighted `font-display: swap` in §9
  * Marked placeholders for consent gating in §11
  * Added §15 **Roadmap & Phasing** for Phase 1 vs Phase 2
* **v1.1** (2025‑06‑08)

  * Final Audit & QA guidelines
  * Skip link requirement
  * Error animation details
  * Dark‑mode note

## 1. Brand & Styles
> **See also:**  
> - [DESIGN_SYSTEM.md](./DESIGN_SYSTEM.md)  
> - [LAUNCH.md](./LAUNCH.md)


* **Font stack:**

  * Inter weights 400, 500, 600
  * Fallbacks: `Helvetica Neue`, Arial, sans‑serif
* **CSS variables** (defined in `:root`):

  ```css
  :root {
    --font-primary: 'Inter', 'Helvetica Neue', Arial, sans‑serif;
    --color-jet-black: #131313;
    --color-white: #FAFAFA;
    --color-neural-blue: #5151FF;
    --color-deep-night: #0F0F33;
    --color-soft-gray: #EAEAEA;
  }
  ```

## 2. Layout & Structure

### 2.1 Hero Section

```html
<section id="hero">
  <h1>Don’t lose yourself in the noise. Javlin is the signal.</h1>
  <p>Your AI‑powered memory engine—capture meaning, recall brilliance.</p>
  <a href="#waitlist" class="btn-primary">Join the waitlist</a>
</section>
```

### 2.2 Features Section

```html
<section class="features container">
  <div class="feature-card">
    <img src="/assets/icons/spark.svg" alt="Spark icon" />
    <h3>AI Sparks</h3>
    <p>Auto-generate flashcards from any content.</p>
  </div>
  <!-- Repeat for three cards total -->
</section>
```

### 2.3 Waitlist Form

Here’s the exact native form markup to use (with ARIA, validation hooks, error & success messages):

```html
<section id="waitlist" class="waitlist-form container">
  <form novalidate>
    <label for="email">Email address</label>
    <input
      id="email"
      name="email"
      type="email"
      required
      aria-required="true"
      aria-invalid="false"
      placeholder="you@example.com"
    />
    <p class="error-msg" role="alert" aria-live="assertive" hidden>
      Please enter a valid email.
    </p>
    <button type="submit" class="btn-primary">Join the waitlist</button>
    <p class="success-msg" role="alert" aria-live="polite" hidden>
      Thanks! Check your inbox—your first Spark arrives tomorrow.
    </p>
  </form>
</section>
```

## 3. Sizing & Spacing Scale

* Base font size: 16px (1rem)
* Spacing increments: 0.5rem
* Headlines:

  * `h1`: 2.5rem
  * `h2`: 2rem
  * `h3`: 1.5rem
* Section vertical gutters: 1rem

## 4. Border Radius & Z-Index

* Border-radius classes:

  * `.radius-sm` = 0.25rem
  * `.radius-md` = 0.5rem
  * `.radius-lg` = 1rem
* Z-index layers:

  * Header: 900
  * Modal: 1000
  * Tooltip: 1100

## 5. Button States

```css
.btn-primary {
  background: var(--color-neural-blue);
  color: var(--color-white);
}
.btn-primary:hover {
  background: var(--color-deep-night);
  opacity: 0.9;
}
.btn-primary:active {
  background: #3348CC;
}
.btn-primary:disabled {
  background: #A0A0A0;
  color: #666;
  cursor: not-allowed;
}
```

## 6. Container & Grid

* `.container`: 12-column CSS Grid; `gap: 1rem`; `max-width: 1200px`.

  * Breakpoints:

    * ≤768px → 6 columns
    * ≤480px → 1 column
* `.features`: `display: flex; flex-wrap: wrap; gap: 1rem; justify-content: center;`

## 7. Accessibility Details

* Semantic tags: `<header>`, `<main id="main">`, `<footer>`
* **Skip link** at top of `<body>`:

  ```html
  <a class="skip-link" href="#main">Skip to main content</a>
  ```
* Contrast: WCAG AA ratios
* Focus outlines:

  ```css
  a:focus,
  button:focus,
  input:focus {
    outline: 2px solid var(--color-neural-blue);
    outline-offset: 2px;
  }
  ```
* Reduced-motion support:

  ```css
  @media (prefers-reduced-motion: reduce) {
    * {
      transition: none !important;
      animation: none !important;
    }
  }
  ```
* ARIA labels on icons, inline error animation transitions

## 8. SEO & Meta Enhancements

```html
<title>Join the Javlin Waitlist – Remember What Matters</title>
<meta name="description" content="Be first in line for Javlin, the AI-powered memory engine that helps you remember what matters most.">
<meta property="og:title" content="Join the Javlin Waitlist – Remember What Matters">
<meta property="og:description" content="Be first in line for Javlin, the AI-powered memory engine that helps you remember what matters most.">
<meta property="og:image" content="https://your-domain.com/assets/og-image.png">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Join the Javlin Waitlist – Remember What Matters">
<meta name="twitter:description" content="Be first in line for Javlin, the AI-powered memory engine that helps you remember what matters most.">
<meta name="twitter:image" content="https://your-domain.com/assets/og-image.png">
```

## 9. Assets & Performance

* SVG icons in `/assets/icons/` <10KB each
* WebP images ≤800px for photos; use `loading="lazy"`
* `font-display: swap` on Google Fonts import
* Defer non-critical CSS

## 10. Copy & Tone

* **Voice:** Calm. Clear. Grounded.
* **Microcopy:**

  * Error: “Please enter a valid email.”
  * Confirmation: “Thanks! Check your inbox—your first Spark arrives tomorrow.”
  * CTA: “Join the waitlist”
* Buttons & headings: Title Case; body text: sentence case

## 11. Analytics & Privacy

1. **Deferred Analytics Loader** (drop into `<head>`)

   ```html
   <script>
     function loadAnalytics() {
       const script = document.createElement('script');
       script.async = true;
       script.src = 'https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX';
       document.head.appendChild(script);
       script.onload = () => {
         window.dataLayer = window.dataLayer || [];
         function gtag(){ dataLayer.push(arguments); }
         window.gtag = gtag;
         gtag('js', new Date());
         gtag('config', 'G-XXXXXXXXXX', { 'anonymize_ip': true });
       };
     }
   </script>
   ```

2. **Consent Banner** (insert immediately after `<body>`)

   ```html
   <div id="consent-banner" class="consent-banner" role="dialog" aria-live="polite">
     <p>
       We use cookies to track usage and improve your experience.
       <a href="/privacy">Privacy Policy</a>.
     </p>
     <button id="consent-accept" class="btn-primary">Accept</button>
     <button id="consent-reject" class="btn-secondary">Reject</button>
   </div>
   ```

3. **Consent Logic & Event Tracking** (before `</body>`, after validation script)

   ```html
   <script>
   (function() {
     function setCookie(n,v,d){
       const e = d ? "; expires="+new Date(Date.now()+d*864e5).toUTCString() : "";
       document.cookie = n+"="+v+e+"; path=/";
     }
     function getCookie(n){
       return document.cookie.split('; ').reduce((r,c)=>c.startsWith(n+'=')?c.split('=')[1]:r,'');
     }

     const banner = document.getElementById('consent-banner');
     const accept = document.getElementById('consent-accept');
     const reject = document.getElementById('consent-reject');

     if (!getCookie('cookie_consent')) {
       banner.style.display = 'flex';
     } else if (getCookie('cookie_consent') === 'accepted') {
       loadAnalytics();
     }

     accept.addEventListener('click', () => {
       setCookie('cookie_consent','accepted',365);
       loadAnalytics();
       banner.style.display = 'none';
     });
     reject.addEventListener('click', () => {
       setCookie('cookie_consent','rejected',365);
       banner.style.display = 'none';
     });

     const form = document.querySelector('#waitlist form');
     form.addEventListener('submit', e => {
       if (window.gtag) {
         gtag('event', 'sign_up', { method: 'waitlist' });
       }
     });
   })();
   </script>
   ```

## 12. Maintenance & QA

* Nightly/aXe audits for accessibility and performance
* Responsive testing on desktop, tablet, mobile
* Performance budgets:

  * LCP < 2.5s
  * FID < 100ms
  * TBT targets
* Audit logging and monitoring setup (Sentry, Datadog)

## 13. Dark Mode & Theming

* CSS media query support:

  ```css
  @media (prefers-color-scheme: dark) {
    body { background: var(--color-jet-black); color: var(--color-white); }
  }
  ```

## 14. Extended Considerations

* Internationalization (i18n)
* PWA setup
* End‑to‑end testing standards
* HTTP security headers
* SEO enhancements (`sitemap.xml`, `robots.txt`)
* Legal/compliance (GDPR/CCPA beyond cookies)
* Developer experience (commit/branch naming, PR checklists)

## 15. Roadmap & Phasing

* **Phase 1 (MVP)**:

  1. CSS tokens & font preload
  2. Base body styles & hero heading
  3. Skip link
  4. Meta tags
  5. Waitlist form with validation & microcopy
  6. Privacy banner & analytics consent
  7. `.btn-primary` states & focus outlines
  8. Responsive grid & spacing scale
  9. Deploy pipeline & basic monitoring
  10. Smoke‑test & QA
* **Phase 2 (Post‑Launch)**:

  * Dark mode toggle
  * Modular sub‑editions (ADHD, Therapy, EDU)
  * Internationalization
  * E2E testing & CI/CD enhancements
  * Advanced analytics (user funnels)
  * Email drip campaigns & notifications

---

### Snippets Annex

For easy reference, here are all critical code blocks in one place:

1. **Waitlist Form**

   ```html
   <section id="waitlist" class="waitlist-form container"> … </section>
   ```

2. **Deferred Analytics Loader**

   ```html
   <script> function loadAnalytics() { … } </script>
   ```

3. **Consent Banner**

   ```html
   <div id="consent-banner" class="consent-banner"> … </div>
   ```

4. **Consent Logic & Tracking**

   ```html
   <script> (function(){ … })(); </script>
   ```







