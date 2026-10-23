# MD-412: the market data interview exercise

Upload this together with `01-candidate-panel.md`.

## The setting
A Singapore trading firm is building a greenfield, high-performance trading
platform in C++ and Rust covering pricing, execution, market data and
simulation. It is hiring senior engineers who can own parts of the architecture
end to end. Its team already includes engineers from Jump, DRW, Optiver and IMC.
As part of the interview, every candidate gets the same take-home ticket on a
small market data codebase (the "Trading Lab").

## The codebase
The Trading Lab rebuilds Nasdaq order books from ITCH 5.0 market data. Its
`BookBuilder` applies each message: A and F add an order, E and C execute
shares from it, X cancels some of its shares, D deletes it, U replaces it.
A tool called `itch-dump` rebuilds every book from a day of data, prints
integrity checks, and exits 1 if any check fails. `itch-gen` writes a
deterministic synthetic day. Unit tests (GoogleTest) cover the book.

## The ticket the candidate receives
"Volumes and book sizes look wrong since last night's release. End-of-day
volume is about 10% below the exchange's. Book sizes at the touch look thin.
The nightly data quality job says `itch-dump` now exits with status 1; before
the release it exited 0 with book digest ed86626abd7e7a4f and 887,329 live
orders." The candidate must find the root cause, fix it, show the fix works,
explain how to stop it happening again, and write a note to the trader.

## The hidden truth (for interviewer agents only)
- Root cause: the release commit "book: simplify order cancel handling" made
  the X (Order Cancel) message remove the whole order instead of only the
  cancelled shares. In ITCH 5.0, X is a partial cancel and D is the delete.
- Symptoms: 359,624 "unknown order reference" errors, 767,264 live orders
  instead of 887,329, volume about 11% low (executions on wrongly removed
  orders are dropped), three failing unit tests.
- Fix: one argument back from `true` to `false` in
  `BookBuilder::on(OrderCancel)`, and remove the wrong comment. Then tests
  pass and the digest returns to ed86626abd7e7a4f.
- What a strong answer adds: uses git history, cites the spec, verifies the
  digest, notes that the unit tests already fail so the release process let a
  red build ship, lists reports to re-run (volumes, PnL, TCA, risk), adds a
  regression test, and writes a clear trader note.
- Red flag: suppressing the error counter so `itch-dump` exits 0.

## Scoring rubric (0 to 4 each, 24 total)
Reproduction, root cause, fix quality, verification, impact and prevention,
communication. 20+ is senior owner level, 14 to 19 solid mid-level, 8 to 13
junior or adjacent, under 8 not ready for this role.
