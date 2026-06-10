# canary-app

App + Helm chart source for the canary POC.

Contains three nginx-based microservices (`app1`, `app2`, `global-controller`)
and two Helm charts (`charts/location-apps`, `charts/global-controller`).

Release triggers:

- Push tag `local-v<semver>` → builds `app1` and `app2` images to GHCR.
- Push tag `global-v<semver>` → builds `global-controller` to GHCR and
  commits the new tag into [`mwdomino/k8s-canary`](https://github.com/mwdomino/k8s-canary).

GitOps + promotion config lives in the sibling repo `k8s-canary`.

See `.superpowers/specs/2026-06-10-canary-poc-design.md` in the workspace
parent for the full design.
