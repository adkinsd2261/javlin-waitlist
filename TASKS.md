# Javlin Implementation Tasks

Use this checklist to track API integration and feature implementation. As you complete each step, mark it `- [x]`.

## 1. Waitlist & Signup

* [ ] Create `apiClient.js` module to wrap fetch calls.
* [ ] Implement `signUpForWaitlist(email)` in `LandingPage.js`.
* [ ] Wire form `onSubmit` to call `signUpForWaitlist`.
* [ ] Display success and error messages based on response status.

## 2. Authentication

* [ ] Implement `login(email, password)` in `AuthService.js`.
* [ ] Store JWT securely (AsyncStorage) and set default auth header.
* [ ] Create `LoginScreen.js` UI and call `login` on submit.
* [ ] Handle 401 by redirecting to `LoginScreen`.

## 3. Fetch Sparks

* [ ] Add `fetchSparks(userId)` to `apiClient.js` using GET endpoint.
* [ ] Call `fetchSparks` in `ReviewScreen.js` after login.
* [ ] Display loading spinner and handle responses.

## 4. Generate Sparks

* [ ] Add `createSparks(userId, content)` to `apiClient.js`.
* [ ] Implement `GenerateScreen.js` with textarea and button.
* [ ] Call `createSparks` and merge new Sparks into state.

## 5. Edit & Reject Controls

* [ ] Extend `SparkCard.js` to include Edit and Reject buttons.
* [ ] Create `editSpark(sparkId, updates)` and `rejectSpark(sparkId)` API stubs or local updates.
* [ ] Add flagging logic (`flaggedForReview` metadata).

## 6. Emotional Badge & Feedback

* [ ] Display `<BadgeEmotion value={emotionalScore} />` in `SparkCard.js`.
* [ ] Add rating UI (😐/🙂/😍) in review flow and store feedback.

## 7. Onboarding Tutorial

* [ ] Implement `TutorialOverlay.js` with steps for swipe, badge, edit/reject.
* [ ] Show overlay on first launch; add skip and `Help` icon.
* [ ] Persist tutorial completion flag in AsyncStorage.

## 8. Dev Environment

* [ ] Commit `assets/architecture-diagram.svg` to `assets/`.
* [ ] Verify and document `npm run mock-server`, `npm run dev:android`, `npm run dev:ios`.
* [ ] Add smoke-test step in CI: `npm run mock-server -- --check`.

## 9. CI/CD & Monitoring

* [ ] Create `RUNBOOK.md` with incident process.
* [ ] Configure GitHub Actions to run builds and deploy to staging.
* [ ] Integrate Sentry DSN and basic error capture.

## 10. Analytics & Experiments

* [ ] Add deferred analytics loader in `index.html` head.
* [ ] Insert consent banner HTML and JS logic in `index.html` body.
* [ ] Fire `spark_review` Mixpanel event on review submit.
* [ ] Set up A/B test variables for timing and badge style.

## 11. Accessibility & Compliance

* [ ] Integrate a11y lint (`axe-core`) into CI.
* [ ] Ensure all buttons, links have focus outlines and ARIA labels.
* [ ] Verify color contrast and reduced-motion support.
* [ ] Document GDPR data-request flows in `BRAND_BIBLE.md`.

## 12. Go-to-Market & Content

* [ ] Gather 3 testimonials and add to `BriefQuotes.js` component.
* [ ] Populate `CONTENT_CALENDAR.md` with topics and draft copy.
* [ ] Implement testimonials carousel under waitlist form in `LandingPage.js`.

---

*Use this file to tick off tasks as you build. Commit and push often to track progress.*
