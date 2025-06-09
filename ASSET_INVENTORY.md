# Javlin Asset Inventory

To streamline development, gather all required assets *before* coding. Place them in the indicated folders so implementation is a simple copy-and-paste.

---

## 1. Design Mockups (Figma/Sketch/PNG/SVG)

| Asset                 | Description                                    | Filename & Path                           |
| --------------------- | ---------------------------------------------- | ----------------------------------------- |
| Hero Section Mockup   | High‑fidelity design of landing page hero      | `assets/design/hero-mockup.png`           |
| Spark Card Component  | UI design for Spark card (idle & review state) | `assets/design/spark-card.svg`            |
| Tutorial Overlay      | Screens showing onboarding tutorial steps      | `assets/design/tutorial-overlay.png`      |
| Testimonials Carousel | Example slides for 3 quotes                    | `assets/design/testimonials-carousel.png` |
| Architecture Diagram  | System architecture (services, data flow)      | `assets/architecture-diagram.svg`         |

---

## 2. Brand & Logo

| Asset             | Description                 | Filename & Path                                             |
| ----------------- | --------------------------- | ----------------------------------------------------------- |
| Brain + Bolt Logo | Primary logo (vector + PNG) | `assets/logo/logo.svg`                                      |
| Logo Variations   | Light/dark/favicons         | `assets/logo/logo-light.svg`<br>`assets/logo/logo-dark.svg` |

---

## 3. Style Tokens

| Asset           | Description                               | Filename & Path                   |
| --------------- | ----------------------------------------- | --------------------------------- |
| Color Swatches  | PNG showing palette with hex labels       | `assets/design/color-palette.png` |
| Typography Spec | PDF or image of font sizes & line heights | `assets/design/typography.png`    |

---

## 4. Documentation Templates

| Asset                       | Description                                 | Filename & Path                     |
| --------------------------- | ------------------------------------------- | ----------------------------------- |
| Privacy Policy Template     | Markdown or PDF of privacy policy           | `assets/privacy-policy-template.md` |
| GDPR/CCPA Addendum Template | Data request & breach workflow              | `assets/gdpr-ccpa-addendum.md`      |
| Incident Runbook Template   | On-call escalation & postmortem guiding doc | `RUNBOOK.md`                        |

---

## 5. Content & Marketing

| Asset            | Description                           | Filename & Path                  |
| ---------------- | ------------------------------------- | -------------------------------- |
| Testimonials     | Three user quotes with names & titles | `assets/content/testimonials.md` |
| Content Calendar | 4-week schedule of post topics        | `CONTENT_CALENDAR.md`            |

---

## How to Use

1. **Gather or create** each asset in the list.
2. **Save** it under the exact path/filename.
3. **Commit** to your `assets/` folder (or repo root for .md files).
4. **Reference** these assets in your docs and code (e.g. `<img src="./assets/design/hero-mockup.png" ...>`).

With all assets in place, development becomes a straightforward matter of copying spec-driven code and visuals into your app.

---

*Place this file at the project root as* `ASSET_INVENTORY.md` *and update as you collect assets.*
