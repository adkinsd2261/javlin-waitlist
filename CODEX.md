# Javlin Waitlist CODEX

**Version:** 1.1 (2025-06-08)
**Changelog:**

* v1.0: Initial spec
* v1.1: Added Maintenance & QA, error animations, skip link, dark-mode note, phased roadmap

**Versioning Policy:**

* **Major version (vX.0):** Increment when making breaking structural changes to the spec (e.g., new sections, reorganizations).
* **Minor version (vX.Y):** Increment for non-breaking enhancements, bug fixes, or clarifications within existing sections.
* **Bump the Version & Date:** Update the `**Version:**` and date at the top of this file whenever you release a new version.

---

## 1. Brand & Styles

* **Font Stack**

  * Primary: `Inter` (weights 400, 500, 600)
  * Fallbacks: `Helvetica Neue`, `Arial`, `sans-serif`
* **Color Palette**

  * Jet Black: `#131313`
  * White: `#FAFAFA`
  * Neural Blue: `#5151FF`
  * Soft Gray: `#EAEAEA`
* **Dark Mode & Theming**

  * Define `--color-*` tokens for light & dark palettes
  * Support `@media (prefers-color-scheme: dark)` overrides
  * UI toggle persisted under `preferences.theme`

---

## 2. Layout & Structure

1. **Hero**

   * `<header id="main" class="hero">` wrapper
   * Contains: `<h1>`, `<p>`, CTA `<a>`
2. **Features**

   * `<main class="features container">`
   * Three `<div class="feature-card">` each with `<img>` + `<p>`
3. **Waitlist Form**

   * `<section id="waitlist" class="waitlist-form container">` contains our native `<form>` markup per §2
4. **Footer**

   * `<footer>` with minimal links (Twitter, Privacy Policy)

---

## 3. Sizing & Spacing Scale

* **Base font size:** `16px` (1 rem)
* **Spacing increments:** multiples of `0.5rem` (8px)
* **Headline sizes:**

```css
h1 { font-size: 2.5rem; }  /* 40px */
h2 { font-size: 2rem; }    /* 32px */
h3 { font-size: 1.5rem; }  /* 24px */
```

* **Section gutters:** `1rem` vertical spacing

---

## 4. Border Radius & Z-Index

* **Radius tokens:**

```css
.radius-sm { border-radius: 0.25rem; }  /* 4px */
.radius-md { border-radius: 0.5rem; }   /* 8px */
.radius-lg { border-radius: 1rem; }     /* 16px */
```

* **Z-Index layers:**
  \| Layer   | z-index |
  \|---------|---------|
  \| Header  | 900     |
  \| Modal   | 1000    |
  \| Tooltip | 1100    |

---

## 5. Button States

```css
.btn-primary {
  background: #5151FF;
  color: #FAFAFA;
  border: none;
  cursor: pointer;
  transition: opacity 0.2s;
}
.btn-primary:hover { opacity: 0.9; }
.btn-primary:active { opacity: 0.95; }
.btn-primary:disabled {
  background: #A0A0A0;
  color: #666666;
  cursor: not-allowed;
}
```

---

## 6. Container & Grid Guidelines

* **Max-widths:**

  * Desktop: `1200px`
  * Tablet: `768px`
  * Mobile: `100%`
* **Grid system:**

```css
.container {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  gap: 1rem;
  max-width: 1200px;
  margin: 0 auto;
}
@media (max-width: 768px) {
  .container { grid-template-columns: repeat(6, 1fr); }
}
@media (max-width: 480px) {
  .container { grid-template-columns: 1fr; }
}
```

* **Feature cards (Flex):**

```css
.features {
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
  justify-content: center;
}
.feature-card {
  text-align: center;
  transition: transform 0.2s;
  border-radius: 0.5rem;
  padding: 1rem;
  background: var(--color-white);
  color: var(--color-jet-black);
}
.feature-card:hover,
.feature-card:focus {
  transform: scale(1.05);
  outline: 2px solid var(--color-neural-blue);
  outline-offset: 2px;
}
```

---

## 7. Accessibility Details

* **Semantic tags:** use `<header>`, `<main>`, `<footer>`
* **Skip link:**

```html
<a href="#main" class="skip-link">Skip to main content</a>
```

* **Contrast (WCAG AA):**

  * White on Jet Black = 21:1
  * Soft Gray on Jet Black = 15:1
* **Form labels & validation:**

```html
<label for="email">Email address</label>
<input id="email" type="email" required>
<p class="error-msg" id="email-error" aria-live="assertive"></p>
<p class="success-msg" id="success-msg" aria-live="polite"></p>
```

* **Error animation:**

```css
.error-msg { opacity: 0; transition: opacity 0.2s ease-in; }
.error-msg.visible { opacity: 1; }
.success-msg { color: var(--color-neural-blue); }
```

* **Focus outlines:**

```css
:focus { outline: 2px solid var(--color-neural-blue); outline-offset: 2px; }
```

* **Reduced-motion:**

```css
@media (prefers-reduced-motion: reduce) { * { transition: none !important; animation: none !important; } }
```

* **ARIA labels for icons:**

```html
<img src="ICON_SIGNAL.svg" alt="" aria-label="Signal over noise">
```

---

## 8. SEO & Meta Enhancements

```html
<title>Join the Javlin Waitlist – Remember What Matters</title>
<meta name="description" content="Join Javlin’s AI Memory Engine waitlist to get personalized spaced-repetition reminders.">
<link rel="canonical" href="https://javlin-waitlist.vercel.app/">
<meta name="robots" content="noindex">

<!-- Open Graph -->
<meta property="og:title" content="Join the Javlin Waitlist – Remember What Matters">
<meta property="og:description" content="Join Javlin’s AI Memory Engine waitlist to get personalized spaced-repetition reminders.">
<meta property="og:image" content="https://javlin-waitlist.vercel.app/og-image.png">

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Join the Javlin Waitlist – Remember What Matters">
<meta name="twitter:description" content="Join Javlin’s AI Memory Engine waitlist to get personalized spaced-repetition reminders.">
<meta name="twitter:image" content="https://javlin-waitlist.vercel.app/og-image.png">

<!-- JSON-LD Structured Data -->
<script type="application/ld+json">{
  "@context":"https://schema.org",
  "@type":"WebSite",
  "name":"Javlin",
  "url":"https://javlin-waitlist.vercel.app/"
}
</script>
```

---

## 9. Assets & Performance

* **Naming & structure:**

  * `/assets/icons/ICON_SIGNAL.svg`
  * `/assets/icons/ICON_IDENTITY.svg`
  * `/assets/icons/ICON_SPACED.svg`
* **Image formats & sizing:** SVG icons (<10 KB), photos as WebP (max 800 px)
* **Lazy-load images:**

```html
<img src="..." loading="lazy" alt="">
```

* **Font-loading strategy:**

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preload" as="style" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
```

* **Critical vs. deferred CSS:**

```html
<style>/* inline critical hero CSS */</style>
<link rel="stylesheet" href="styles.css" media="print" onload="this.media='all'">
```

---

## 10. Copy & Tone

* **Voice & tone:** “Calm. Clear. Grounded.” — concise, active, minimal jargon
* **Microcopy templates:**

  * Error: “Please enter a valid email.”
  * Confirmation: “Thanks! Check your inbox—your first Spark arrives tomorrow.”
  * CTA: “Join the waitlist”
* **Punctuation & capitalization:**

  * Buttons/headings: Title Case
  * Body: Sentence case, period at end, sparing exclamation points

---

## 11. Analytics & Privacy

* **Analytics snippet placeholder:**

```html
<!-- INSERT analytics script here -->
```

* **Privacy Policy link:** footer link text “Privacy Policy” → `/privacy`
* **Consent banner basics:**

```html
<!-- GDPR banner: “We use cookies to improve your experience.” [Accept] -->
```

---

## 12. Maintenance & QA

1. Verify semantic tags (`<header>`, `<main>`, `<footer>`) in the DOM.
2. Test form: empty/invalid submit → inline error + ARIA alert.
3. Keyboard nav: tab through all interactive elements → visible focus outlines.
4. Run accessibility audit (contrast, labels).
5. Inspect source: verify `<title>`, meta description, OG, Twitter tags.
6. Check network: images lazy-load, font-display swap.
7. Test responsive breakpoints: desktop, tablet, mobile.
8. Measure performance: Lighthouse LCP/FID within targets.
9. Confirm analytics fires post-consent and privacy link is visible.

---

## 13. Backend Architecture & Services

### 13.1 API Endpoints (v1)

* **Versioning:** All routes prefixed with `/v1` (e.g. `POST /v1/waitlist`).
* **OpenAPI Schema:** Document each endpoint’s request/response schemas and error codes.
* **Endpoints:**

  * `POST /v1/waitlist`

    * Body: `{ email: string }` → `201`, `400`, `429`
  * `GET /v1/users/{id}/sparks` → `200`, `401`
  * `POST /v1/users/{id}/sparks` → `{ content, source }` → `201`, `400`, `401`
  * `PATCH /v1/users/{id}/sparks/{sparkId}` → partial update → `200`, `400`, `404`, `401`
  * `DELETE /v1/users/{id}/sparks/{sparkId}` → `204`, `404`, `401`
  * Auth: `POST /v1/auth/signup`, `POST /v1/auth/login`, `POST /v1/auth/refresh`

### 13.2 Data Model & Storage

* **User**: `id` (PK), `email` (unique, indexed), `created_at`, `preferences` (typed JSON)
* **Spark**: `id` (PK), `user_id` (FK → User, cascade delete), `content`, `source`, `created_at`
* **Review**: `id` (PK), `spark_id` (FK → Spark, cascade delete), `due_date` (indexed), `interval`, `easiness_factor`

### 13.3 Decoupled AI Pipeline

1. Ingestion Service → queue
2. Spark Generator → AI model → queue
3. Persistence Worker → DB + schedule review
4. Retries (3×) + dead-letter + metrics/logging

### 13.4 Scheduler & Notifications

* Timezone-aware midnight cron → user timezone
* Email via SendGrid/SES with retries/dead-letter
* Push opt-in + FCM

### 13.5 Authentication & Security

* JWT 15m/30d with rotation
* CSRF (SameSite + tokens)
* Rate-limits (100/hr IP)
* Audit logs

### 13.6 DevOps, CI/CD & Monitoring

* CI gates: unit ≥80%, integration ≥50%
* `/v1/health` endpoint
* SLOs: 99.9% uptime, p95 <200ms
* Sentry + dashboards

---

## 14. Extended Considerations

### 14.1 Dark Mode & Theming

* Prefers-color-scheme support + toggle

### 14.2 Internationalization (i18n)

* `/i18n/{lang}.json`, `Intl` APIs

### 14.3 Progressive Web App (PWA)

* `manifest.json`, `sw.js`, offline fallback

### 14.4 Testing & QA Standards

* E2E `/tests/e2e`, `*.spec.ts`, CI enforcement

### 14.5 Security & HTTP Headers

* CSP, HSTS, X-Frame-Options, Referrer-Policy

### 14.6 Performance Budgets

* CSS/JS ≤150 KB, images ≤200 KB, Lighthouse CI

### 14.7 Legal & Compliance

* Data retention 60d, GDPR/CCPA endpoints, policy review

### 14.8 Developer Experience

* Commit `✨ feat(scope): desc`, branch rules, PR checklist

### 14.9 SEO Enhancements

* `sitemap.xml`, `robots.txt`, pagination tags

---

## 15. Roadmap & Phasing

**Phase 1 (MVP):** Sections 1–7, 8–12, 13.1–13.2, 13.5, core 13.6, 14.4–14.7, 14.8–14.9
**Phase 2 (Post-Launch):** Sections 13.3–13.4, 14.1–14.3, advanced dashboards





