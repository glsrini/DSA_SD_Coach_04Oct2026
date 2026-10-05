"""Session state for DSA_SD_COACH_4Oct2026 (see the Agent Design doc, State schema)."""
from typing import Literal, Optional, TypedDict

Mode = Literal["dsa_practice", "dsa_mock", "sd_practice", "sd_mock",
               "code_review", "pattern_mapper", "srs_review",
               "recommend", "help"]


class CoachState(TypedDict):
    learner_id: str
    profile: dict                  # loaded from storage, never re-asked
    messages: list                 # chat history for this session
    mode: Optional[Mode]
    step: str                      # e.g. "setup", "brute_force", "dry_run"
    problem_id: Optional[str]
    hint_level: int                # 0..3, rises by exactly 1
    attempted: bool                # real attempt made
    brute_force_given: bool
    dry_run_done: bool
    code_allowed: bool             # "show me the code" or reference after attempt
    blocked_turns: int             # mocks: counts stuck turns for one nudge
    curveball_used: bool           # SD mock: max 1
    phase_started_at: dict         # phase -> timestamp, for debrief times
    self_scores: Optional[dict]    # 5 dimensions, required before coach scores
    coach_scores: Optional[dict]
    rubric: Literal["dsa", "sd"]
    card_draft: Optional[dict]     # pattern or design card
    session_complete: bool
