# Hiring simulations with MiroFish

Seed documents for simulating how different candidates handle a technical
interview exercise. The candidates are fictional, so results are a thought
experiment about how each profile tends to work, not an assessment of a real
person.

The exercise is ticket MD-412 on the `interview/market-data-exercise` branch of
`vinstarworld007/Trading`: a planted market data bug where partial order
cancels wipe orders off the book.

## How to run it
1. Start MiroFish as in `political-scenarios/README.md` (keys in `.env`, then
   `Start-MiroFish.bat` or `npm run dev`, then http://localhost:3000).
2. Upload **both** `00-md412-exercise.md` and `01-candidate-panel.md` as seed material.
3. Paste the "Prediction question" from the top of `01-candidate-panel.md` as the
   simulation requirement.
4. Keep rounds low (10 to 20) for the first run.
5. In the report and agent chat, ask each candidate agent to walk through their
   fix, then ask the interviewer agents to score them with the rubric.
6. Inject one of the listed variables and run again to compare.

## Comparing with the expected answers
`00-md412-exercise.md` contains the real root cause and rubric, so the
interviewer agents can judge answers. Compare MiroFish's predicted scores
with the benchmark table at the end of `01-candidate-panel.md`.
