# MD-412 candidate panel

Upload this together with `00-md412-exercise.md`.

**Prediction question to paste into MiroFish:**
"Seven candidates with very different backgrounds each get ticket MD-412, a
planted market data bug where partial order cancels wipe orders off the book.
How does each candidate approach it, how far do they get (reproduce, root
cause, fix, verification, impact, trader note), and what score out of 24 would
the interview panel give each one? Which candidates would the panel move
forward for a senior C++/Rust trading platform role, and why?"

## The interview panel
- **Head of Trading Technology**: ex-Optiver, owns the platform architecture.
  Cares most about root cause, verification and whether the candidate thinks
  about production impact.
- **Senior Market Data Engineer**: ex-IMC, wrote the original feed handler.
  Probes knowledge of the ITCH spec and test discipline.
- **Equities Trader**: raised the ticket. Judges only the trader note: is it
  clear what was wrong and which numbers to distrust?
- **Recruiter**: wants a fair comparison across very different profiles.

## The candidates
1. **Priya, senior HFT engineer.** 10 years in low-latency market data at a
   prop trading firm; has built ITCH and OUCH handlers and owned a production
   feed handler. Expert C++, solid Rust. Goes to the data and the git history
   first, reads specs, thinks about blast radius and process.
2. **Daniel, mid-level C++ engineer from banking and payments.** 5 years of
   C++ on a payments switch and a bank pricing library. Strong testing and
   debugger habits. No exchange feed experience.
3. **Wei, new-grad Rust developer.** Strong computer science degree, Rust side
   projects, one internship. Little C++, no finance. Learns fast, tends to
   follow failing tests.
4. **Sofia, quant data analyst.** Python and pandas, market microstructure
   research. Reads C++ but rarely writes it. Thinks in data comparisons.
5. **Alex, junior web developer who relies on an AI coding assistant.** 2 years
   of web work. Pastes everything into the assistant and applies what it says.
6. **Hannah, fintech product manager.** 6 years as PM on a broker's trading
   platform. Knows order types and market data concepts. Does not code. Strong
   at stakeholder communication.
7. **Marcus, career switcher.** Operations and customer support background,
   halfway through an online coding course. No finance knowledge.

## Variables you can inject in later runs (one at a time)
- The unit tests are removed from the branch, so the failing tests no longer
  point at the bug.
- Candidates have only 45 minutes instead of a take-home.
- AI coding assistants are banned during the exercise.
- The panel asks every candidate "the tests catch this, so why did it ship?"
- The bug is changed to a subtler one in the order hash map that only shows
  on a full trading day.

## Benchmark: expected outcomes (for comparing with MiroFish's prediction)
| Candidate | Expected outcome | Score /24 |
|---|---|---|
| Priya | Root cause, fix, regression test, release-gate finding, trader note | 22–24 |
| Daniel | Finds and fixes via the failing tests; weaker on impact | 14–18 |
| Wei | Fixes by following the failing test; can't explain the domain | 9–13 |
| Sofia | Pins down the symptom from data; may not land the C++ fix | 10–14 |
| Alex | Right fix quickly with the assistant; thin explanation | 8–14 |
| Hannah | Excellent triage and trader note; no fix | 6–9 |
| Marcus | Describes the symptom; can't build or fix | 1–4 |
