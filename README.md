# DevOps Lite — Testbed

Throwaway SFDX project paired with four Salesforce Developer Edition orgs (`TestbedProd`, `TestbedUat`, `SlotAliceDev`, `SlotBobDev`) for end-to-end verification of [DevOps Lite](https://github.com/zenmastermx/devops-lite).

**Do not treat this repo as production.** Branches and metadata here are rewritten and rolled back during testing.

## Branches

| Branch | Role |
|---|---|
| `prod` | Final integration stage — simulates Prod |
| `uat` | UAT integration stage |
| `alice-dev` | Dev slot 1 — Alice's personal branch |
| `bob-dev` | Dev slot 2 — Bob's personal branch |

All four branches start from the same initial commit so promotions, back-syncs, and conflicts can be exercised from a clean baseline.

## Seed metadata

Minimal, crafted so `alice-dev` and `bob-dev` can touch overlapping files to stage WARNING / BLOCKING conflict pairs.

- `force-app/main/default/classes/Greeter.cls` — one Apex class.
- `force-app/main/default/profiles/Admin.profile-meta.xml` — Admin profile with a handful of field permissions Alice and Bob can each modify.
- `force-app/main/default/permissionsets/Testbed.permissionset-meta.xml` — same purpose as the profile, PermissionSet flavor.

## Reset

When a test run leaves the testbed in a weird state, rollback to the initial commit, re-push every long-lived branch, and re-run the first-connect baseline wizard in DevOps Lite. Full playbook lives in the main DevOps Lite repo at `docs/TESTBED.md`.
