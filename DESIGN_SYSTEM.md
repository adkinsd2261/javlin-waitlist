# Javlin Design System v1.0

**Purpose:** Central reference for brand tokens, typography, spacing, components, and theming.

---

## 1. Brand Identity

* **Tagline:** Don’t lose yourself in the noise. Javlin is the signal.
* **Voice & Tone:** Calm. Clear. Grounded. Modern. Honest.

### 1.1 Color Palette

```css
:root {
  --color-jet-black: #131313;
  --color-white: #FAFAFA;
  --color-neural-blue: #5151FF;
  --color-deep-night: #0F0F33;
  --color-soft-gray: #EAEAEA;
}
```

### 1.2 Typography

* **Font Stack:**

  * `Inter` (400, 500, 600)
  * `Helvetica Neue`, `Arial`, `sans-serif`
* **Size Scale:**

  ```css
  h1 { font-size: 2.5rem; } /* 40px */
  h2 { font-size: 2rem; }   /* 32px */
  h3 { font-size: 1.5rem; } /* 24px */
  body { font-size: 1rem; } /* 16px */
  ```
* **Line Height & Weight:**

  * Headings: `1.2` line-height, `600` weight
  * Body: `1.5` line-height, `400` weight

---

## 2. Spacing & Layout Tokens

* **Spacing Unit:** `0.5rem` (8px)

  * Utilities: `m-2` = `0.5rem`, `m-4` = `1rem`, etc.
* **Radii:**

  ```css
  .radius-sm { border-radius: 0.25rem; } /* 4px */
  .radius-md { border-radius: 0.5rem; }  /* 8px */
  .radius-lg { border-radius: 1rem; }    /* 16px */
  ```
* **Z-Index Layers:**

  | Layer   | z-index |
  | ------- | ------- |
  | Header  | 900     |
  | Modal   | 1000    |
  | Tooltip | 1100    |

---

## 3. Components

### 3.1 Buttons

```css
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
```

### 3.2 Form Elements

```css
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
```

### 3.3 Cards

```css
.feature-card {
  background: var(--color-white);
  padding: 1rem;
  border-radius: 0.5rem;
  box-shadow: 0 2px 8px rgba(0,0,0,0.05);
  text-align: center;
}
.feature-card img { width: 48px; height: 48px; margin-bottom: 0.5rem; }
.feature-card h3 { margin-top: 0; }
```

---

## 4. Grid & Layout

```css
.container {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  gap: 1rem;
  max-width: 1200px;
  margin: 0 auto;
}
@media (max-width: 768px) { .container { grid-template-columns: repeat(6, 1fr); } }
@media (max-width: 480px) { .container { grid-template-columns: 1fr; } }
```

---

## 5. Dark Mode

```css
@media (prefers-color-scheme: dark) {
  :root {
    --color-white: #131313;
    --color-jet-black: #FAFAFA;
    --color-soft-gray: #333333;
  }
  body { background: var(--color-jet-black); color: var(--color-white); }
  .feature-card { background: #1A1A1A; }
}
```

---

## 6. Icons & Assets

* Store SVGs in `/public/assets/icons/`
* Filenames in UPPER\_SNAKE: `ICON_SIGNAL.svg`, `ICON_IDENTITY.svg`, `ICON_SPACED.svg`
* Optimize with SVGO to keep <10 KB each

---

*(Use this document for any UI implementation, prototyping, or design bot mockups.)*

