# Javlin Waitlist CODEX

**Version:** 1.1 (2025-06-08)
**Changelog:**

* v1.0: Initial spec
* v1.1: Added Maintenance & QA, error animations, skip link, dark-mode note

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

---

## 2. Layout & Structure

1. **Hero**

   * `<header>` wrapper
   * Contains, in order:

     1. `<h1>` headline
     2. `<p>` subhead
     3. `<a>` CTA linking to `#waitlist`
2. **Features**

   * `<main>` section
   * Three `<div class="feature-card">` each with:

     * `<img>` for icon
     * `<p>` for label
3. **Waitlist Form**

   * `<section id="waitlist" class="waitlist-form">` wraps the Starter Story embed
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
.btn-primary:hover {
  background: #3E3BFF;
  opacity: 0.9;
}
.btn-primary:active {
  background: #3348CC;
  opacity: 0.95;
}
.btn-primary:disabled {
  background: #A0A0A0;
  color: #666666;
  cursor: not-allowed;
}
```

---

```css
.btn-primary {
  background: #5151FF;
  color: #FAFAFA;
  border: none;
  cursor: pointer;
  transition: opacity 0.2s;
}
.btn-primary:hover {
  background: #3E3BFF;
  opacity: 0.9;
}
.btn-primary:active {
  background: #3348CC;
  opacity: 0.95;
}
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
<p class="error-msg" id="email-error" aria-live="assertive">Please enter a valid email.</p>
```

* **Error animation:**

```css
.error-msg {
  transition: opacity 0.2s ease-in;
  opacity: 0;
}
.error-msg.visible { opacity: 1; }
```

* **Focus outlines:**

```css
:focus {
  outline: 2px solid #5151FF;
  outline-offset: 2px;
}
```

* **Reduced-motion:**

```css
@media (prefers-reduced-motion: reduce) {
  * { transition: none !important; animation: none !important; }
}
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
<link rel="canonical" href="https://waitlist.javlin.ai/">
<meta name="robots" content="noindex">

<!-- Open Graph -->
<meta property="og:title" content="Join the Javlin Waitlist – Remember What Matters">
<meta property="og:description" content="Join Javlin’s AI Memory Engine waitlist to get personalized spaced-repetition reminders.">
<meta property="og:image" content="https://waitlist.javlin.ai/og-image.png">

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Join the Javlin Waitlist – Remember What Matters">
<meta name="twitter:description" content="Join Javlin’s AI Memory Engine waitlist to get personalized spaced-repetition reminders.">
<meta name="twitter:image" content="https://waitlist.javlin.ai/og-image.png">

<!-- JSON-LD Structured Data -->
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "Javlin",
  "url": "https://waitlist.javlin.ai/"
}
</script>
```

---

## 9. Assets & Performance

* **Naming & structure:**

  * `/assets/icons/ICON_SIGNAL.svg`
  * `/assets/icons/ICON_IDENTITY.svg`
  * `/assets/icons/ICON_SPACED.svg`
* **Image formats & sizing:** icons as SVG (<10 KB), photos as WebP (max 800 px)
* **Lazy-load images:**

```html
<img src="…" loading="lazy" alt="">
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
* **OpenAPI Schema:** Define request and response bodies, query parameters, headers, and error codes for each endpoint in an OpenAPI 3.0 document.
* **Endpoints:**

  * **POST /v1/waitlist**

    * Body schema: `{ email: string }`
    * Responses: `201 Created`, `400 Bad Request`, `429 Too Many Requests`
    * Rate-limit: 100 requests/hour per IP.
  * **GET /v1/users/{id}/sparks**

    * Responses: `200 OK` with list of Sparks, `401 Unauthorized`
  * **POST /v1/users/{id}/sparks**

    * Body schema: `{ content: string, source: enum }`
    * Responses: `201 Created`, `400 Bad Request`, `401 Unauthorized`
  * **PATCH /v1/users/{id}/sparks/{sparkId}**

    * Body schema: partial Spark update
    * Responses: `200 OK`, `400`, `404 Not Found`, `401`
  * **DELETE /v1/users/{id}/sparks/{sparkId}**

    * Responses: `204 No Content`, `404`, `401`
  * **Auth:**

    * `POST /v1/auth/signup`
    * `POST /v1/auth/login`
    * `POST /v1/auth/refresh`

### 13.2 Data Model & Storage

* **User**

  * `id` (UUID, PK), `email` (unique, indexed), `created_at` (timestamp), `preferences` (JSON with typed keys).
  * Constraints: email unique.
* **Spark**

  * `id` (UUID, PK), `user_id` (UUID, FK ON DELETE CASCADE), `content` (text), `source` (enum), `created_at` (timestamp).
  * Index on `user_id` and composite unique on (`user_id`, `source`, `created_at`).
* **Review**

  * `id` (UUID, PK), `spark_id` (UUID, FK ON DELETE CASCADE), `due_date` (date, indexed), `interval` (integer), `easiness_factor` (float).
  * Index on `due_date` for scheduling.

### 13.3 Decoupled AI Processing Pipeline

1. **Ingestion Service**

   * Receives inputs on `/v1/ingest`, publishes messages to queue (e.g. SQS, Kafka).
2. **Spark Generator**

   * Subscribes to queue, invokes AI model, publishes generated Spark to a secondary queue.
3. **Persistence Worker**

   * Subscribes to Spark queue, upserts Spark to DB, schedules initial Review.
4. **Reliability:**

   * Retry policy: 3 retries with exponential backoff.
   * Dead-letter queue for failures.
   * Metrics: processed count, error rate, latency histograms.

### 13.4 Scheduler & Notifications

* **Timezone-Aware Jobs:**

  * Cron triggers at midnight UTC, compute each user’s local reset based on `preferences.timezone`.
* **Email Delivery:**

  * Use SendGrid/SES with retry (3 attempts) and dead-letter logs.
* **Push Notifications:**

  * Opt-in flag in `preferences.notifications.push`.
  * Use FCM, record consent timestamp.

### 13.5 Authentication & Security

* **JWT Strategy:**

  * Access token 15m expiry, Refresh token 30d expiry, rotation on use.
* **CSRF Protection:**

  * SameSite=strict cookies and double-submit CSRF tokens for state‑changing routes.
* **Rate Limiting/Mitigation:**

  * Apply at API gateway: 100 req/hr per IP for public endpoints.
* **Audit Logging:**

  * Log auth events (signup, login, refresh, logout) with user ID, timestamp, IP.

### 13.6 DevOps, CI/CD & Monitoring

* **CI/CD Gates:**

  * Unit test coverage ≥80%, integration coverage ≥50%. Fail build if unmet.
* **Health Endpoint:**

  * `/v1/health` returns JSON status of DB, queue, AI service.
* **SLOs/SLIs:**

  * 99.9% uptime, p95 latency <200ms, error rate <1%.
* **Error Tracking:**

  * Sentry integration for unhandled exceptions.
* **Performance Dashboards:**

  * Datadog or Grafana dashboards for request rates, latencies, queue depth.

---

## 14. Extended Considerations

### 14.1 Dark Mode & Theming

* Support user preference via CSS media query:

  ```css
  @media (prefers-color-scheme: dark) { /* dark theme overrides */ }
  ```
* Define `--color-*` tokens for both light and dark palettes.
* Provide a UI toggle to manually switch themes and persist in `preferences.theme`.

### 14.2 Internationalization (i18n)

* Use locale file structure: `/i18n/{lang}.json` with key-value pairs.
* Format dates/numbers via `Intl.DateTimeFormat` and `Intl.NumberFormat`.
* Default locale derived from browser or `preferences.locale`.

### 14.3 Progressive Web App (PWA)

* Add `manifest.json` with `name`, `icons`, `start_url`, `display`.
* Implement service worker (`sw.js`) to cache critical assets and offline fallback.
* Define cache strategies (stale-while-revalidate for CSS/JS, cache-first for icons).

### 14.4 Testing & QA Standards

* E2E tests with Cypress or Playwright; store tests in `/tests/e2e`.
* Use naming conventions: `*.spec.ts` for tests, group by feature.
* CI runs tests on PRs; block merges on failures.

### 14.5 Security & HTTP Headers

* Content Security Policy (CSP):

  ```html
  <meta http-equiv="Content-Security-Policy" content="default-src 'self'; script-src 'self'; img-src 'self' data:; style-src 'self' 'unsafe-inline';">
  ```
* Enforce HSTS, X-Frame-Options, Referrer-Policy:

  ```http
  Strict-Transport-Security: max-age=31536000; includeSubDomains
  X-Frame-Options: DENY
  Referrer-Policy: no-referrer-when-downgrade
  ```

### 14.6 Performance Budgets

* Limit CSS/JS bundles to ≤150 KB each.
* Image payload budget ≤200 KB per page.
* Monitor via Lighthouse CI in pipeline; fail if scores drop below 90/90/90.

### 14.7 Legal & Compliance

* Data retention: purge waitlist emails after 60 days if unsubscribed.
* GDPR/CCPA notes: outline data export/deletion endpoints.
* Privacy policy review every 6 months.

### 14.8 Developer Experience

* Commit message convention: `type(scope): description` with emoji prefix (e.g., `✨ feat(api): add signup endpoint`).
* Branch naming: `feature/xyz`, `bugfix/abc`, `hotfix/123`.
* PR Checklist: description, linked issue, tests added, review required.

### 14.9 SEO Enhancements

* Generate and publish `sitemap.xml` at root, update on deploy.
* Include `robots.txt`:

  ```txt
  User-agent: *
  Disallow:
  Sitemap: https://waitlist.javlin.ai/sitemap.xml
  ```
* Use `rel="next"`/`rel="prev"` for paginated future pages.

---


