# Javlin Design System v1.0

> **See also:**
> - [CODEX.md](./CODEX.md)
> - [LAUNCH.md](./LAUNCH.md)

**Purpose:** Central reference for brand tokens, typography, spacing, components, and theming.

---

## 1. Brand Identity

- **Tagline:** Don’t lose yourself in the noise. Javlin is the signal.
- **Voice & Tone:** Calm. Clear. Grounded. Modern. Honest.

### 1.1 Color Palette
```css
:root {
  --color-jet-black: #131313;
  --color-white: #FAFAFA;
  --color-neural-blue: #5151FF;
  --color-deep-night: #0F0F33;
  --color-soft-gray: #EAEAEA;
}
1.2 Typography
Font Stack:

Inter (400, 500, 600)

Helvetica Neue, Arial, sans-serif

Size Scale:

css
Copy
Edit
h1 { font-size: 2.5rem; } /* 40px */
h2 { font-size: 2rem; }   /* 32px */
h3 { font-size: 1.5rem; } /* 24px */
body { font-size: 1rem; } /* 16px */
Line Height & Weight:

Headings: 1.2 line-height, 600 weight

Body: 1.5 line-height, 400 weight

2. Spacing & Layout Tokens
Spacing Unit: 0.5rem (8px)

Utilities: m-2 = 0.5rem, m-4 = 1rem, etc.

Radii:

css
Copy
Edit
.radius-sm { border-radius: 0.25rem; } /* 4px */
.radius-md { border-radius: 0.5rem; }  /* 8px */
.radius-lg { border-radius: 1rem; }    /* 16px */
Z-Index Layers:

Layer	z-index
Header	900
Modal	1000
Tooltip	1100

3. Components
3.1 Hero Example
html
Copy
Edit
<section id="hero">
  <h1>Don’t lose yourself in the noise. Javlin is the signal.</h1>
  <p>Your AI-powered memory engine—capture meaning, recall brilliance.</p>
  <a href="#waitlist" class="btn-primary">Join the waitlist</a>
</section>
3.2 Buttons
css
Copy
Edit
.btn-primary {
  background: var(--color-neural-blue);
  color: var(--color-white);
  padding: 0.75rem 1.5rem;
  border: none;
  border-radius: 0.5rem;
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
3.3 Form Elements
css
Copy
Edit
input, textarea {
  width: 100%;
  padding: 0.5rem;
  border: 1px solid var(--color-soft-gray);
  border-radius: 0.25rem;
  font-size: 1rem;
}
label { display: block; margin-bottom: 0.25rem; }
.error-msg { color: #D9534F; font-size: 0.875rem; }
.success-msg { color: var(--color-neural-blue); font-size: 0.875rem; }
3.4 Cards
css
Copy
Edit
.feature-card {
  background: var(--color-white);
  padding: 1rem;
  border-radius: 0.5rem;
  box-shadow: 0 2px 8px rgba(0,0,0,0.05);
  text-align: center;
}
.feature-card img { width: 48px; height: 48px; margin-bottom: 0.5rem; }
.feature-card h3 { margin-top: 0; }
4. Grid & Layout
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
@media (max-width: 768px) { .container { grid-template-columns: repeat(6, 1fr); } }
@media (max-width: 480px) { .container { grid-template-columns: 1fr; } }
5. Dark Mode
css
Copy
Edit
@media (prefers-color-scheme: dark) {
  :root {
    --color-white: #131313;
    --color-jet-black: #FAFAFA;
    --color-soft-gray: #333333;
  }
  body { background: var(--color-jet-black); color: var(--color-white); }
  .feature-card { background: #1A1A1A; }
}
6. Icons & Assets
Store SVGs in /public/assets/icons/

Filenames in UPPER_SNAKE: ICON_SIGNAL.svg, ICON_IDENTITY.svg, ICON_SPACED.svg

Optimize with SVGO to keep <10 KB each

Use this document for UI implementation, prototyping, and Design Bot mockups.

yaml
Copy
Edit

---

## **LAUNCH.md**

```markdown
# Javlin Launch Playbook v1.0

> **See also:**
> - [CODEX.md](./CODEX.md)
> - [DESIGN_SYSTEM.md](./DESIGN_SYSTEM.md)

**Purpose:** A step-by-step guide to orchestrate marketing and go-to-market launch activities for the Javlin waitlist MVP.

---

## 1. Timeline & Phases

| Phase             | Dates      | Goals                                            |
|-------------------|------------|--------------------------------------------------|
| **MVP Launch**    | June 2025  | Waitlist form, Spark email flow, basic analytics |
| **Soft Launch**   | July 2025  | Dashboard stub, PWA, i18n support                |
| **Public Launch** | August 2025| Full feature release, app store submission       |

---

## 2. Email & Messaging Sequence

1. **Day 0: Welcome & Brand Story**  
   - **Subject:** “Welcome to Javlin—Your Memory’s Best Friend”  
   - **Content:** Brand narrative, signal vs. noise, what to expect.

2. **Day 1: Your First Spark**  
   - **Subject:** “Here’s Your First Spark!”  
   - **Content:** Explanation of spaced repetition, what Sparks are, next steps.

3. **Day 7: 1-Week Streak Congrats**  
   - **Subject:** “Congrats on Your First Week Streak!”  
   - **Content:** Milestone celebration, ask for feedback, invite to share.

4. **Day 14: Feature Teaser**  
   - **Subject:** “Sneak Peek: Coming Dashboard Features”  
   - **Content:** Tease upcoming dashboard and PWA support.

---

## 3. Social & Content Cadence

- **Weekly Tips (Every Tuesday)**  
  - “Memory Hack of the Week” posts + illustrative graphic.

- **User Story Spotlights (Monthly)**  
  - Share 2–3 waitlister testimonials or mini case studies.

- **Illustration Showcase (Monthly)**  
  - Design Bot generates one custom illustration per month.

---

## 4. Creative Assets

- **Email Templates**: HTML for Day 0, 1, 7, 14 sequences.  
- **Social Graphics**: 1200×627 px for OG and Twitter Cards.  
- **Press Kit**: Logo pack (SVG/PNG), brand guidelines PDF.

---

## 5. Support & FAQ

- **Privacy Policy**: [View here](/privacy)  
- **Terms of Service**: [View here](/terms)  
- **Support Email**: support@javlin.ai  
- **FAQ Topics**:  
  - How does spaced repetition work?  
  - How do I export my Sparks?  
  - How do I delete my data?

---

## 6. Metrics & Success Criteria

- **Waitlist Sign-ups**: 1,000 in MVP Launch  
- **Email Engagement**: 50% open rate, 20% CTR on spark emails  
- **Retention**: 40% 7-day active revisit  
- **Feedback NPS**: +30 or higher after Day 7

---

## 7. Roles & Responsibilities

| Task                    | Owner      |
|-------------------------|------------|
| Email sequence setup    | Marketing  |
| Social content creation | Marketing  |
| Asset generation        | Design Bot |
| Waitlist page QA        | QA Bot     |
| Feature demos & copy    | Forge      |
| Go-live monitoring      | Signal     |

---

*Use this playbook to coordinate all launch activities across teams and AI personas.*  

