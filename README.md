# nexus-store-btree-kit

`nexus-store-btree-kit` is a Swift project in databases. Its focus is to develop a Swift command-oriented project for btree scenarios with framed sample traffic, bounds and ordering tests, and no network dependency.

## Purpose

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Nexus Store Btree Kit Review Notes

The first comparison I would make is `index fit` against `index fit` because it shows where the rule is most opinionated.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for index fit and join width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/nexus-store-btree-walkthrough.md` walks through the case spread.
- The Swift code includes a review path for `index fit` and `index fit`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Swift implementation avoids hidden state so fixture changes are easy to reason about.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The same command runs the local verification path. The highest-scoring domain case is `stale` at 229, which lands in `ship`. The most cautious case is `baseline` at 153, which lands in `ship`.

## Limits

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
