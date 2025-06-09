# Javlin Waitlist CODEX

**Version:** 1.1 (2025-06-08)  
**Changelog:**  
- v1.0: Initial spec  
- v1.1: Added Maintenance & QA, error animations, skip link, dark-mode note, backend architecture, extended considerations, roadmap & phasing

---

## 1. Brand & Styles

* **Font Stack**  
  * Primary: `Inter` (weights 400, 500, 600)  
  * Fallbacks: `Helvetica Neue`, `Arial`, `sans-serif`  
* **Color Palette**  
  * Jet Black: `#131313`  
  * White: `#FAFAFA`  
  * Neural Blue: `#5151FF`  
  * Deep Night: `#0F0F33`  
  * Soft Gray: `#EAEAEA`  

---

## 2. Layout & Structure

1. **Hero**  
   * `<header id="main" class="hero">` wrapper  
   * Contains, in order:  
     1. `<h1>` headline  
     2. `<p>` subhead  
     3. `<a class="btn-primary">` CTA linking to `#waitlist`  
2. **Features**  
   * `<main class="features container">`  
   * Three `<div class="feature-card">` each with:  
     * `<img>` for icon + `aria-label`  
     * `<p>` for label  
3. **Waitlist Form**  
   * `<section id="waitlist" class="waitlist-form container">` contains our native `<form>` markup (see §2.3)  
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
Section gutters: 1rem vertical spacing

4. Border Radius & Z-Index
Radius tokens:

css
Copy
Edit
.radius-sm { border-radius: 0.25rem; }  /* 4px */
.radius-md { border-radius: 0.5rem; }   /* 8px */
.radius-lg { border-radius: 1rem; }     /* 16px */
Z-Index layers:

Layer	z-index
Header	900
Modal	1000
Tooltip	1100

5. Button States
css
Copy
Edit
.btn-primary {
  background: #5151FF;
  color: #FAFAFA;
  border: none;
  cursor: pointer;
  transition: opacity 0.2s;
}
.btn-primary:hover {
  opacity: 0.9;
}
.btn-primary:active {
  opacity: 0.95;
}
.btn-primary:disabled {
  background: #A0A0A0;
  color: #666666;
  cursor: not-allowed;
}
6. Container & Grid Guidelines
Max-widths:

Desktop: 1200px

Tablet: 768px

Mobile: 100%

Grid system:

css
Copy
Edit
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
Feature cards (Flex):

css
Copy
Edit
.features {
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
  justify-content: center;
}
7. Accessibility Details
Semantic tags: <header>, <main>, <footer>

Skip link:

html
Copy
Edit
<a href="#main" class="skip-link">Skip to main content</a>
Contrast (WCAG AA):

White on Jet Black = 21:1

Soft Gray on Jet Black = 15:1

Form labels & validation:

html
Copy
Edit
<label for="email">Email address</label>
<input id="email" type="email" required>
<p class="error-msg" id="email-error" aria-live="assertive">Please enter a valid email.</p>
Error animation:

css
Copy
Edit
.error-msg {
  transition: opacity 0.2s ease-in;
  opacity: 0;
}
.error-msg.visible { opacity: 1; }
Focus outlines:

css
Copy
Edit
:focus {
  outline: 2px solid #5151FF;
  outline-offset: 2px;
}
Reduced-motion:

css
Copy
Edit
@media (prefers-reduced-motion: reduce) {
  * { transition: none !important; animation: none !important; }
}
ARIA labels for icons:

html
Copy
Edit
<img src="/assets/icons/ICON_SIGNAL.svg" alt="" aria-label="Signal over noise">
8. SEO & Meta Enhancements
html
Copy
Edit
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
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "Javlin",
  "url": "https://javlin-waitlist.vercel.app/"
}
</script>
9. Assets & Performance
Naming & structure:

/assets/icons/ICON_SIGNAL.svg

/assets/icons/ICON_IDENTITY.svg

/assets/icons/ICON_SPACED.svg

Image formats & sizing: icons as SVG (< 10 KB), photos as WebP (max 800 px)

Lazy-load images:

html
Copy
Edit
<img src="…" loading="lazy" alt="">
Font-loading strategy:

html
Copy
Edit
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preload" as="style" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
Critical vs. deferred CSS:

html
Copy
Edit
<style>/* inline critical hero CSS */</style>
<link rel="stylesheet" href="styles.css" media="print" onload="this.media='all'">
10. Copy & Tone
Voice & tone: “Calm. Clear. Grounded.” — concise, active, minimal jargon

Microcopy templates:

Error: “Please enter a valid email.”

Confirmation: “Thanks! Check your inbox—your first Spark arrives tomorrow.”

CTA: “Join the waitlist”

Punctuation & capitalization:

Buttons/headings: Title Case

Body: Sentence case, period at end, sparing exclamation points

11. Analytics & Privacy
Analytics snippet placeholder:

html
Copy
Edit
<!-- INSERT analytics script here -->
Privacy Policy link: footer link text “Privacy Policy” → /privacy

Consent banner basics:

html
Copy
Edit
<!-- GDPR banner: “We use cookies to improve your experience.” [Accept] -->
12. Maintenance & QA
Verify semantic tags (<header>, <main>, <footer>) in the DOM.

Test form: empty/invalid submit → inline error + ARIA alert.

Keyboard nav: tab through all interactive elements → visible focus outlines.

Run accessibility audit (contrast, labels).

Inspect source: verify <title>, meta description, OG, Twitter tags.

Check network: images lazy-load, font-display swap.

Test responsive breakpoints: desktop, tablet, mobile.

Measure performance: Lighthouse LCP/FID within targets.

Confirm analytics fires post-consent and privacy link is visible.

13. Backend Architecture & Services
13.1 API Endpoints (v1)
Versioning: All routes prefixed with /v1 (e.g. POST /v1/waitlist).

OpenAPI Schema: Define request/response bodies, query parameters, headers, and error codes in OpenAPI 3.0.

Endpoints:

POST /v1/waitlist

Body: { email: string }

Responses: 201 Created, 400 Bad Request, 429 Too Many Requests

Rate-limit: 100 req/hr per IP

GET /v1/users/{id}/sparks

Responses: 200 OK with list, 401 Unauthorized

POST /v1/users/{id}/sparks

Body: { content: string, source: enum }

Responses: 201 Created, 400, 401

PATCH /v1/users/{id}/sparks/{sparkId}

Body: partial Spark update

Responses: 200 OK, 400, 404, 401

DELETE /v1/users/{id}/sparks/{sparkId}

Responses: 204 No Content, 404, 401

Auth:

POST /v1/auth/signup

POST /v1/auth/login

POST /v1/auth/refresh

13.2 Data Model & Storage
User

id (UUID, PK), email (unique, indexed), created_at (timestamp), preferences (typed JSON)

Constraints: email unique

Spark

id (UUID, PK), user_id (UUID FK ON DELETE CASCADE), content (text), source (enum), created_at (timestamp)

Index on user_id, unique on (user_id, source, created_at)

Review

id (UUID, PK), spark_id (UUID FK ON DELETE CASCADE), due_date (date, indexed), interval (int), easiness_factor (float)

Index on due_date

13.3 Decoupled AI Processing Pipeline
Ingestion Service

Receives inputs on /v1/ingest, publishes to queue (SQS/Kafka)

Spark Generator

Subscribes to queue, invokes AI model, publishes Spark to secondary queue

Persistence Worker

Subscribes to Spark queue, upserts to DB, schedules initial Review

Reliability:

Retry policy: 3× with exponential backoff

Dead-letter queue for failures

Metrics: processed count, error rate, latency histograms

13.4 Scheduler & Notifications
Timezone-Aware Jobs: Cron at midnight UTC → compute per-user local reset from preferences.timezone

Email Delivery: SendGrid/SES with 3× retry and dead-letter logs

Push Notifications (optional): Opt-in via preferences.notifications.push, use FCM, record consent

13.5 Authentication & Security
JWT Strategy: Access tokens 15 min expiry, refresh tokens 30 d expiry, rotation on use

CSRF Protection: SameSite=strict cookies + double-submit CSRF tokens

Rate Limiting: 100 req/hr per IP on public endpoints

Audit Logging: Record auth events (signup, login, refresh, logout) with user ID, timestamp, IP

13.6 DevOps, CI/CD & Monitoring
CI/CD Gates: Unit coverage ≥ 80%, integration ≥ 50%; fail build if unmet

Health Endpoint: /v1/health returns DB, queue, AI service status

SLOs/SLIs: 99.9% uptime, p95 latency < 200 ms, error rate < 1%

Error Tracking: Sentry integration for exceptions

Performance Dashboards: Datadog/Grafana for request rates, latencies, queue depth

14. Extended Considerations
14.1 Dark Mode & Theming
CSS media query support:

css
Copy
Edit
@media (prefers-color-scheme: dark) { /* overrides */ }
Define dual --color-* tokens for light/dark

Provide UI toggle, persist in preferences.theme

14.2 Internationalization (i18n)
Locale files: /i18n/{lang}.json with key–value pairs

Format via Intl.DateTimeFormat, Intl.NumberFormat

Default locale from browser or preferences.locale

14.3 Progressive Web App (PWA)
Add manifest.json (name, icons, start_url, display)

Service worker (sw.js) caching strategies:

stale-while-revalidate for CSS/JS

cache-first for icons

Offline fallback page

14.4 Testing & QA Standards
E2E tests in /tests/e2e with Cypress/Playwright

Naming: *.spec.ts, group by feature

CI runs tests on PRs; block merges on failures

14.5 Security & HTTP Headers
CSP:

html
Copy
Edit
<meta http-equiv="Content-Security-Policy" content="default-src 'self'; script-src 'self'; img-src 'self' data:; style-src 'self' 'unsafe-inline';">
HSTS, X-Frame-Options, Referrer-Policy:

pgsql
Copy
Edit
Strict-Transport-Security: max-age=31536000; includeSubDomains
X-Frame-Options: DENY
Referrer-Policy: no-referrer-when-downgrade
14.6 Performance Budgets
CSS/JS bundles ≤ 150 KB each

Image payload ≤ 200 KB per page

Lighthouse CI thresholds: scores ≥ 90/90/90; fail pipeline if not met

14.7 Legal & Compliance
Data retention: purge waitlist emails after 60 days if unsubscribed

GDPR/CCPA endpoints: export/delete user data

Privacy policy review every 6 months

14.8 Developer Experience
Commit messages: ✨ feat(api): add signup endpoint

Branch naming: feature/xyz, bugfix/abc, hotfix/123

PR Checklist: issue linked, tests added, review required

14.9 SEO Enhancements
Publish sitemap.xml at root, update on deploy

Include robots.txt:

makefile
Copy
Edit
User-agent: *
Disallow:
Sitemap: https://javlin-waitlist.vercel.app/sitemap.xml
Use rel="next"/"prev" for pagination in future

15. Roadmap & Phasing
To launch quickly and scalably, we categorize CODEX sections into two phases:

Phase 1 (MVP Launch):

Sections 1–7: Brand & Styles, Layout, Sizing, Radii, Button States, Grid, Accessibility

Sections 8–12: SEO & Meta, Assets & Performance, Copy & Tone, Analytics & Privacy, Maintenance & QA

Section 13.1–13.2: API Endpoints v1, Data Model & Storage

Section 13.5: Authentication & Security

Section 13.6 (core): CI/CD gates, health endpoint, Sentry integration, basic metrics

Section 14.4: Core E2E Testing & QA naming conventions

Section 14.5: CSP, HSTS, X-Frame-Options, Referrer-Policy

Section 14.6 (core budgets): JS/CSS ≤ 150 KB, image ≤ 200 KB, Lighthouse CI thresholds

Section 14.7: Data retention & GDPR/CCPA stubs

Section 14.8: Git & PR conventions, branch naming rules

Section 14.9: sitemap.xml, robots.txt stub

Phase 2 (Post-Launch Enhancements):

Section 13.3: Decoupled AI Pipeline (queueing, retries, DLQ, metrics)

Section 13.4: Timezone-aware scheduler, push notifications opt-in

Section 14.1: Dark Mode & Theming UI toggle

Section 14.2: Internationalization (i18n) support

Section 14.3: Progressive Web App (manifest, service worker, offline)

Section 14.6 (advanced dashboards): detailed performance budgets and dashboards

Copy
Edit




