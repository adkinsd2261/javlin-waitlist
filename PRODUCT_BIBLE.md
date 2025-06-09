# Javlin Product Bible v1.2 (2025-06-09)

**Changelog:**
- **v1.2** (2025-06-09)
  - Elevated Accessibility by Design to Pillar 4
  - Added Accessibility Checklist
  - Included Experiment Plan linking metrics to feature tests
  - Added Testimonials & Social Proof section stub

---

## Executive Summary

Javlin is an AI-powered memory engine built to help people capture, clarify, and retain what matters most. Leveraging AI-generated “Sparks” and spaced repetition, Javlin surfaces personalized reminders at optimal intervals. This document outlines our vision, brand pillars, core concepts, technical architecture, feature roadmap, success metrics, and launch readiness.

## Table of Contents
1. [Vision & Brand Pillars](#vision--brand-pillars)  
2. [Tagline & Voice](#tagline--voice)  
3. [Core Concept: The Memory Engine](#core-concept-the-memory-engine)  
4. [MVP Features & Technical Stack](#mvp-features--technical-stack)  
5. [System Architecture & Services](#system-architecture--services)  
6. [Data Models & API Endpoints](#data-models--api-endpoints)  
7. [Feature Roadmap & Phasing](#feature-roadmap--phasing)  
8. [Timeline & Success Metrics](#timeline--success-metrics)  
9. [Accessibility Checklist](#accessibility-checklist)  
10. [Experiment Plan](#experiment-plan)  
11. [Extended Considerations](#extended-considerations)  
12. [Testimonials & Social Proof](#testimonials--social-proof)  

---

## Vision & Brand Pillars

* **Vision:** Empower individuals to capture, clarify, strengthen, and resurface meaningful content and experiences through AI-driven memory tools.  
* **Pillars:**
  1. **Signal** – Cut through information overload to surface what truly matters.  
  2. **Clarity** – Present insights in a straightforward, digestible format.  
  3. **Resonance** – Foster long-term retention by embedding personal and emotional relevance.  
  4. **Accessibility by Design** – Ensure every interface is operable, perceivable, and understandable, meeting WCAG AA standards from the first line of code. :contentReference[oaicite:3]{index=3}

---

## Tagline & Voice

* **Tagline:** Don’t lose yourself in the noise. Javlin is the signal.  
* **Voice:** Calm, clear, grounded, modern, and honest—minimal jargon, active tone.

### Voice Examples

| Context         | On-Brand Example                                             | Off-Brand Example                                   |
| --------------- | ------------------------------------------------------------ | --------------------------------------------------- |
| Feature Teaser  | “Unlock key insights in seconds—no card sorting required.”   | “Our proprietary NLP algorithm ensures optimal UX.”  |
| Error Message   | “Oops, something went wrong. Try again in a moment.”         | “Error 503: Service Unavailable.”                   |

---

## Core Concept: The Memory Engine

* **Sparks:** AI-generated flashcards distilled from any input (text, links, notes, voice). Each Spark includes metadata: `emotionalScore` (0–1), `complexityLevel` (1–5), and `categoryTags` for personalized grouping.  
* **Spaced Repetition:** Adaptive intervals based on performance: 1, 3, 7, 14+ days.  
* **Memory Score:** Tracks correct vs total responses over past 7 days.  
* **Resonance Algorithm:** Calculates `emotionalScore` using sentiment analysis and user feedback to prioritize Sparks that resonate most.  
* **Streak Badge:** Displays consecutive days of review.  
* **Smart Reminders:** Local push notifications and in-app badges for due Sparks.

---

## MVP Features & Technical Stack

| Feature               | User Story & Acceptance Criteria                                                                                                                                   | Tech Stack                        |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------- |
| Authentication        | **User Story:** As a user, I can sign up and log in securely.<br>**Done when:** Login flow completes with Firebase Auth and email verification.                        | Firebase Auth                     |
| Sparks Generation     | **User Story:** As a user, I can submit content and receive 3–5 Sparks.<br>**Done when:** OpenAI GPT returns formatted Sparks and they save to Firestore.          | OpenAI GPT, Cloud Functions       |
| Spaced Repetition     | **User Story:** As a user, I see due Sparks listed by `nextReview` date.<br>**Done when:** Sparks with `nextReview <= now` appear in review queue.                | Firestore queries + client logic  |
| Memory Score & Streak | **User Story:** As a user, I see my Memory Score and Streak Badge.<br>**Done when:** Score calculates correctly over past 7 days.                                     | Firestore + client-side logic     |
| Notifications         | **User Story:** As a user, I receive daily reminders for due Sparks.<br>**Done when:** App sends local push at 9 AM user time.                                         | AsyncStorage + Expo Notifications |

---

## System Architecture & Services

* **Architecture Diagram:** [View SVG](./assets/architecture-diagram.svg)  
* **Environment Variables:**  
  - `FIREBASE_API_KEY`, `FIREBASE_AUTH_DOMAIN`, `OPENAI_API_KEY`, `NOTIFICATION_SERVICE_KEY`  
* **Local Dev Scripts:**  
  - `npm run dev:android`  
  - `npm run dev:ios`  
  - `npm run mock-server`  
* **Mock Service Guidance:** Use `npm run mock-server` for local API stubs at `http://localhost:4000` :contentReference[oaicite:4]{index=4}

---

## Data Models & API Endpoints

### Data Models (Firestore)

```js
User {
  id: string;
  email: string;
  createdAt: timestamp;
}
Spark {
  id: string;
  userId: string;
  question: string;
  answer: string;
  emotionalScore: number;
  complexityLevel: number;
  categoryTags: string[];
  createdAt: timestamp;
  lastReviewed: timestamp;
  nextReview: timestamp;
  timesReviewed: number;
  successRate: number;
}

