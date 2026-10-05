# DSA and System Design interview coach

**DSA_SD_Coach_04Oct2026**: a LangGraph coaching agent for DSA and system design interview prep. It builds on the Aaroh coach and enforces its rules in code instead of prompt text.

## Status
Build phase 0: design docs and scaffolding. `app/cli.py` (phase 1) doesn't exist yet, so the desktop shortcut won't start the coach until it does.

## Contents
| Path | What |
| --- | --- |
| `docs/01_requirements.md` | Agent requirements: Steps 1 to 4 (requirements, Project instructions, knowledge pack, progress log) |
| `docs/02_agent_design.md` | Agent design: architecture, nodes, rule guards, storage, tools, evals, build plan |
| `docs/diagrams/` | Architecture diagrams (SVG) used by both docs |
| `docs/progress_log.md` | Learner progress log (manual stand-in until the agent writes it) |
| `source/` | Original inputs: Aaroh `SKILL.md` and README, ChatGPT setup guide, Project instructions (01), knowledge pack (02), progress log template (03) |
| `app/state.py` | Typed session state checked by the rule guards |
| `sql/schema.sql` | Learner, session and card tables plus the progress-log view, seeded with the first session |
| `launch_coach.bat` | Starts the coach (creates `.venv` on first run) |
| `create_shortcut.ps1` | Run once to put a desktop icon on Windows |
| `requirements.txt` | LangGraph, LangChain, Langfuse |

Live, editable versions of the two docs (with diagrams):
- Requirements: https://claude.ai/code/artifact/322cfffc-129a-486c-9592-378e18b655ce
- Agent design: https://claude.ai/code/artifact/b56e69c2-2b0b-48e0-8164-ccb48dc57f99

## Local setup
Clone into `C:\Users\glsri\repos\aaroh\DSA_SD_Coach\DSA_SD_Coach_04Oct2026`, which is the path both scripts expect. Then create the desktop shortcut:
```powershell
powershell -ExecutionPolicy Bypass -File create_shortcut.ps1
```

## Credits
`source/SKILL.md` and `source/AAROH_README.md` come from the Aaroh project (https://github.com/nsr-19/aaroh, MIT).
