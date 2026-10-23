# Political simulations with MiroFish

These are seed documents for MiroFish. Both scenarios are fictional, so results are a
thought experiment about agent behaviour, not a real forecast.

## How to run one
1. Put your keys in `C:\Users\Home\Apps\MiroFish\repo\.env` (LLM_API_KEY and ZEP_API_KEY).
2. Double-click `C:\Users\Home\Apps\MiroFish\Start-MiroFish.bat` (or run `npm run dev` in the `repo` folder).
3. Open http://localhost:3000.
4. Upload one of the `.md` files here as the seed material.
5. Paste the "Prediction question" from the top of that file as the simulation requirement.
6. Keep rounds low (10 to 20) for the first try, because simulations use many tokens.
7. After it runs, use the report and chat with agents. Try injecting one of the listed variables
   and run again to compare outcomes.

## Writing your own
Any PDF, Markdown or TXT works. Good seeds name the actors (parties, leaders, groups, media),
their positions and the current facts, and end with a concrete question about what happens next.
You can also use a real news article or policy document as the seed.
