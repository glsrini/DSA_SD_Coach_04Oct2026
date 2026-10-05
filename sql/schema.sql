-- Storage schema for DSA_SD_COACH_4Oct2026 (see the Agent Design doc, Storage schema).
CREATE TABLE learner (
  id TEXT PRIMARY KEY,
  target_roles TEXT, target_companies TEXT, language TEXT,
  level TEXT,                 -- Junior maps to the New Grad row
  weak_dsa TEXT, weak_sd TEXT, timeline TEXT,
  session_default TEXT        -- preferred session style
);

CREATE TABLE session (
  id TEXT PRIMARY KEY, learner_id TEXT REFERENCES learner(id),
  date TEXT, mode TEXT, problem TEXT, difficulty TEXT,
  rubric TEXT,                -- dsa or sd
  self_scores TEXT, coach_scores TEXT,   -- JSON, 5 dimensions each
  verdict TEXT, improvement TEXT, debrief TEXT,
  complete INTEGER,           -- 0 = logged as incomplete, unscored
  trace_id TEXT               -- Langfuse link
);

CREATE TABLE card (
  id TEXT PRIMARY KEY, learner_id TEXT, session_id TEXT,
  kind TEXT,                  -- pattern or design
  title TEXT, body TEXT,      -- JSON from the knowledge-pack templates
  stage TEXT,                 -- 1, 2, 3, graduated
  last_rating TEXT,           -- Good, Hard, Again
  next_review TEXT
);

CREATE VIEW progress_log AS
  SELECT s.date, s.mode, s.problem, s.difficulty, s.coach_scores, s.verdict,
         s.improvement, c.title AS card, c.stage, c.next_review
  FROM session s LEFT JOIN card c ON c.session_id = s.id
  ORDER BY s.date DESC;

-- First learner and today's incomplete session from the Progress Log
INSERT INTO learner VALUES ('me', 'Junior SWE', 'Google, Meta, Microsoft, Amazon',
  'Python', 'Junior', 'Sorting, Trees', NULL, 'Exploratory', NULL);
INSERT INTO session (id, learner_id, date, mode, problem, difficulty, rubric,
  improvement, complete) VALUES ('2026-10-04-1', 'me', '2026-10-04', 'dsa_practice',
  'Maximum Depth of Binary Tree', 'Easy', 'dsa',
  'Start talking within the first 2 minutes: restate the problem and ask one clarifying question', 0);
