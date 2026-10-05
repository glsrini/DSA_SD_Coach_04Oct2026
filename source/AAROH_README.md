# Aaroh 🚀

**Your AI-powered DSA, System Design & Interview Coach.**

Master technical interviews through intelligent coaching — not answer-copying. Aaroh combines DSA problem-solving guidance, system design coaching, and realistic mock interviews into one unified system that adapts to your level and tracks your progress.

---

## What Makes Aaroh Different

| Feature | Details |
|---------|---------|
| **DSA Practice with Progressive Hints** | 3-tier hint system (intuition → direction → pattern reveal). Never gives answers unprompted. |
| **System Design Coaching** | Structured 6-step flow covering requirements, estimation, architecture, deep dives, scaling & trade-offs. |
| **DSA Mock Interviews** | Realistic simulation with named interviewer persona, timed pressure, company-specific styles (Google, Meta, Amazon, Apple, Microsoft). |
| **System Design Mock Interviews** | Full simulation with mid-interview curveballs, probing questions, and post-interview debrief. |
| **Code Review** | Interview-focused review: correctness, complexity, code quality, and "Would this pass a real interview?" verdict. |
| **Pattern Mapper** | Identifies which of 15 core algorithmic patterns applies to any problem. Teaches signal-word recognition. |
| **5-Dimension Scoring Rubric** | Every session rated on Problem Understanding, Approach & Patterns, Code Quality, Complexity Analysis, and Communication. |
| **Self-Calibration** | You rate yourself first, then see the coach's scores. Tracks the gap to build self-awareness over time. |
| **Pattern Cards + Spaced Repetition** | Every solved problem generates a structured pattern card. SRS review at timed intervals (1 day → 3 days → 7 days → 14 days). |
| **Learner Profile Personalization** | Target role, company, language, weak areas, experience level, and timeline — calibrates everything to you. |
| **Difficulty Calibration by Level** | Problems and coaching intensity adjust for New Grad, Mid, Senior, and Staff+ levels. |
| **"Think Out Loud" Active Coaching** | Prompts you to verbalize your thinking if you go silent. Builds the communication habit interviewers evaluate. |
| **"Brute Force First" Discipline** | Always asks for the brute force approach before optimizing. Mirrors real interview expectations. |
| **Smart Recommendations** | "What should I practice today?" analyzes your gaps and suggests the highest-impact next activity. |
| **`help` Command** | Shows all available features and how to activate each one at a glance. |
| **Dual Platform Support** | Works on both Claude.ai (via Projects) and Claude Code. Setup takes under 5 minutes. |

---

## Quick Start (5 minutes)

### Option A: Claude Code (Recommended)

```bash
# Clone the repo
git clone https://github.com/nsr-19/aaroh.git
cd aaroh

# Rename SKILL.md to CLAUDE.md
mv SKILL.md CLAUDE.md

# Open in Claude Code and say:
# "I want to practice DSA" or "mock interview" or "system design"
```

### Option B: Claude.ai (Projects)

1. Go to [claude.ai](https://claude.ai) → Create a new Project
2. Click **"Add content"** → Upload these files as Project Knowledge:
   - `SKILL.md` (the main skill — most important)
   - All files from `modes/` folder (6 files)
   - Both files from `templates/` folder
3. Start a conversation in this Project
4. Say what you want to practice (see examples below)

### Option C: Claude.ai (Quick — single file)

If you want a lighter setup:
1. Create a new Project on claude.ai
2. Upload only `SKILL.md` as Project Knowledge
3. You'll get the core coaching experience without the detailed mode instructions

---

## How to Use Each Feature

### 1. DSA Practice — Solve Problems with a Coach 🎯

**What it does:** Guides you through solving a DSA problem step-by-step with a 3-tier hint system, dry run verification, and pattern card generation.

**How to start:**
```
You: "Let's practice a medium-level array problem"
You: "Help me solve LeetCode 15 - 3Sum"
You: "I want to work on dynamic programming"
You: "Give me a graph problem for SDE-2 level"
```

**The 6-step flow:**
1. **Problem Setup** — Aaroh presents the problem, confirms understanding
2. **Thinking / Stuck** — You think out loud (Aaroh prompts you if you go silent). Start with brute force, then optimize. Use the hint system if stuck:
   - Say `hint` → one-sentence intuition (no algorithm names)
   - Say `hint hint` → narrower direction (still no pattern name)
   - Say `hint hint hint` → pattern revealed, key insight explained
3. **Dry Run** — Walk through a test case by hand before coding
4. **Check-In** — Pitch your approach in 30 seconds: what, why, and expected complexity
5. **Code** — Write your solution. Aaroh reviews.
6. **Pattern Card** — Get a structured card for spaced repetition review

**After solving, you get:**
- 5-dimension rating (you rate yourself first, then see the coach's scores)
- A pattern card saved for review
- 2–3 related problems to practice the same pattern

---

### 2. DSA Mock Interview — Simulate the Real Thing 🎤

**What it does:** A realistic 45-minute DSA interview. Aaroh plays an interviewer from your target company. No hints, no hand-holding. Full debrief afterward.

**How to start:**
```
You: "Mock interview me for Google"
You: "Let's do a DSA interview simulation"
You: "Practice interview — medium difficulty"
You: "Mock interview — hard, Meta style"
```

**What happens:**
1. Aaroh introduces themselves as an interviewer at your target company
2. Presents a problem (matched to your level)
3. You drive the solution — clarify, approach, code, test
4. Aaroh probes like a real interviewer: "Why this data structure?" "What about this edge case?"
5. No feedback until the end
6. Full debrief with:
   - Time breakdown per phase
   - 5-dimension scorecard (your self-rating vs. coach's rating)
   - Interviewer's inner monologue (what they were really thinking)
   - "If this were real" honest verdict
   - Specific, actionable improvements

**Company-specific styles:** Google (algorithmic depth), Meta (speed), Amazon (leadership principles), Apple (code quality), Microsoft (system thinking).

---

### 3. System Design Practice — Learn to Design Systems 🏗️

**What it does:** Coaches you through designing large-scale systems step-by-step. Adapts difficulty to your level. Teaches you to think about requirements, trade-offs, scaling, and failure modes.

**How to start:**
```
You: "Let's practice system design"
You: "Help me design a URL shortener"
You: "System design — give me a senior-level problem"
You: "Design Twitter"
```

**The 6-step flow:**
1. **Problem Presentation** — System to design (matched to your level)
2. **Requirements Gathering** — Aaroh waits for you to ask clarifying questions. If you jump to design, Aaroh redirects.
3. **Estimation** — Back-of-envelope calculations for QPS, storage, bandwidth
4. **High-Level Design** — Draw the architecture. Aaroh probes your choices.
5. **Deep Dive** — Go deep on 1–2 components. Aaroh pushes: "What about cache invalidation?" "How do you handle hot partitions?"
6. **Scaling & Trade-offs** — "What breaks at 100x traffic?" "What would you change?"

**Difficulty levels:**
| Level | Example Problems |
|-------|-----------------|
| Junior | URL shortener, Rate limiter, Key-value store |
| Mid | Instagram, Chat system, Notification service |
| Senior | Google Maps, YouTube, Uber |
| Staff+ | Distributed task scheduler, Google Docs, Ad serving |

**After practicing, you get:**
- A filled design template (requirements, architecture, trade-offs, scaling)
- 5-dimension rating with self-calibration
- Key insight captured for review

---

### 4. System Design Mock Interview — Full Simulation 🎤🏗️

**What it does:** A realistic system design interview. Aaroh plays a Staff Engineer interviewer. Evaluates everything: how you gather requirements, how you communicate trade-offs, how you handle curveballs.

**How to start:**
```
You: "System design mock interview"
You: "SD interview simulation — senior level"
You: "System design mock for Amazon — staff level"
```

**What makes it realistic:**
- Aaroh introduces a curveball mid-interview ("Product just told us we need to support [new feature]")
- No guidance unless you ask
- Probing questions throughout: "Why?" "What if?" "How does this fail?"
- Full debrief afterward with interviewer inner monologue

---

### 5. Code Review — Get Feedback on Your Solutions 🔍

**What it does:** Paste any solution and get a thorough review: correctness, complexity, code quality, and an interview-readiness verdict.

**How to start:**
```
You: "Review my solution" [paste code]
You: "Is this optimal?" [paste code]
You: "What's wrong with my solution?" [paste code]
You: "Can I improve this?" [paste code]
```

**What you get:**
- Correctness check (with failing test case if there's a bug)
- Complexity analysis (actual vs. optimal)
- Code quality score
- Interview-ready verdict: Yes / Almost / No
- Specific improvements (not vague — concrete suggestions)
- Teaching: "What if you used [data structure] instead?"

---

### 6. Pattern Mapper — Identify the Right Approach 🗺️

**What it does:** Given a problem you don't know how to approach, helps you identify which algorithmic pattern applies and teaches you the signal words that reveal patterns.

**How to start:**
```
You: "What pattern is this?" [describe or paste problem]
You: "I don't know how to approach this problem"
You: "Which technique should I use here?"
You: "Categorize this problem for me"
```

**What you get:**
- Step-by-step pattern identification (Aaroh guides you to discover it yourself)
- Signal word analysis (what clues in the problem point to this pattern)
- The pattern template (general approach for this pattern type)
- Related problems to solidify the pattern

**The 15 core patterns covered:**
Two Pointers, Sliding Window, Prefix Sum, Binary Search, Backtracking, Dynamic Programming, BFS, DFS, Topological Sort, Union-Find, Heap/Priority Queue, Stack (Monotonic), Trie, Hash Map, Interval Processing.

---

### 7. Spaced Repetition Review — Retain What You Learned 🔄

**What it does:** Reviews your solved problems at scientifically-timed intervals so you don't forget patterns.

**How to start:**
```
You: "Let's do a review session"
You: "Which problems are due for review?"
You: "Review my pattern cards"
```

**How it works:**
- Aaroh scans your saved pattern cards
- Finds cards due for review based on SRS stage
- Shows the problem name only — asks you to describe the approach and key insight
- Based on your recall, updates the stage:
  - Stage 1 → review after 1 day
  - Stage 2 → review after 3 days
  - Stage 3 → review after 7 days
  - Graduated → review after 14 days

---

## Recommended Daily Workflow

| Time | Activity | What to Do |
|------|----------|-----------|
| **10 min** | Morning Review | Run a review session for pattern cards due today |
| **35 min** | Practice | Solve 1–2 new problems with the DSA coach |
| **5 min** | Reflect | Ask Aaroh to summarize what patterns you practiced |
| **30 min (2×/week)** | System Design | One system design practice session |
| **15 min (weekly)** | Pattern Audit | Ask Aaroh to list all patterns learned and identify gaps |
| **Before interviews** | Mock | Run a full mock interview (DSA or System Design) |

---

## Project Structure

```
aaroh/
├── SKILL.md                      # Main coach (rename to CLAUDE.md for Claude Code)
├── README.md                     # This file
├── modes/
│   ├── dsa-practice.md          # DSA coaching with 6-step flow + hint system
│   ├── dsa-interview.md         # DSA mock interview simulation
│   ├── system-design.md         # System design coaching with 6-step flow
│   ├── sd-interview.md          # System design mock interview simulation
│   ├── code-review.md           # Code review with interview-readiness verdict
│   └── pattern-mapper.md        # Pattern recognition training (15 core patterns)
├── templates/
│   ├── pattern-card.md          # DSA pattern card template with SRS fields
│   └── design-template.md       # System design template with SRS fields
└── docs/
    └── quickstart.md            # Quick reference card
```

---

## Tips for Best Results

1. **Set your profile first.** Tell Aaroh your target role, language, weak areas, and timeline. This calibrates everything.
2. **Use the hint system honestly.** Don't jump to "hint hint hint" — the struggle at tier 1 is where learning happens.
3. **Always dry run.** Even when you think you have the right approach. Tracing through a test case catches bugs before they become code.
4. **Rate yourself before seeing scores.** The gap between your self-rating and the coach's rating is where self-awareness grows.
5. **Save pattern cards.** The SRS system only works if you review consistently.
6. **Do mock interviews.** Practice without hints at least once a week. Individual drills build skills. Mocks test the whole package.
7. **Don't skip system design.** Most candidates under-prepare for system design relative to DSA. It's often the deciding round.

---

## FAQ

**Q: Do I need Claude Code?**
A: No. Aaroh works on Claude.ai (via Projects) and Claude Code. See Quick Start for both options.

**Q: What languages are supported?**
A: All major languages — Python, Java, C++, JavaScript, Go, TypeScript, Rust, and more. Tell Aaroh your preference and all examples/solutions will use it.

**Q: Is this for beginners?**
A: Yes. The difficulty calibrates to your level. New grads get easier problems and more hint availability. Senior engineers get harder problems with less hand-holding.

**Q: How is this better than ChatGPT for interview prep?**
A: ChatGPT gives you answers. Aaroh coaches you to find answers yourself. It uses a structured 6-step flow, progressive hints, Socratic questioning, and a scoring rubric modeled on real MAANG interviews. It also tracks your self-assessment accuracy — knowing your blind spots matters more than any individual problem.

**Q: Does it cover behavioral interviews?**
A: The current version focuses on DSA and System Design — the two most technically demanding interview types. Behavioral prep may be added in a future version.

---

## Contributing

Found an issue or want to improve a mode? Open a PR with:
- What mode is affected
- Current behavior vs. expected behavior
- Suggested fix

---

## License

MIT

---

**Ready to start?** Clone the repo, set up your profile, and say: *"Let's practice."* 🚀
