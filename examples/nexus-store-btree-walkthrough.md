# Nexus Store Btree Kit Walkthrough

I use this file as a small checklist before changing the Swift implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | index fit | 153 | ship |
| stress | join width | 156 | ship |
| edge | constraint risk | 167 | ship |
| recovery | plan drift | 202 | ship |
| stale | index fit | 229 | ship |

Start with `stale` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`stale` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
