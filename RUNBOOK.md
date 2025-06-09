````markdown
# Incident Runbook

## 1. Detection
- Monitor Sentry/Datadog for error rate > 5% or latency > 500ms.

## 2. Escalation
- On-call: @oncall-dev (Slack channel #incidents)
- PagerDuty: [Link to on-call schedule]

## 3. Mitigation
1. Identify root cause via logs.
2. Roll back last deployment if needed:
   ```bash
git revert <bad-commit-sha>
````

3. Apply hotfix and redeploy.

## 4. Communication

* Notify stakeholders in #status-updates
* Update status page: [https://status.your-domain.com](https://status.your-domain.com)