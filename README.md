# research-agent

Autonomous research agent skills for Claude Code.

## Skills

### Strategic Researcher
Intelligence tool for SaaS finance leaders. Researches a question across web sources (Bessemer, OpenView, KeyBanc, SaaStr, practitioner blogs, AI case studies, PropTech analysis), then produces:

- **Executive Brief** — structured findings with actionable recommendations
- **Podcast Script** — conversational format for NotebookLM/TTS audio generation (~10 min)
- **Quick-Scan Card** — 10-line summary printed directly in conversation

Also supports internal analysis: benchmarking, financial modeling, scenario planning, GTM efficiency analysis.

### Code Experimenter
Autonomous experimentation framework (from [ResearcherSkill](https://github.com/krzysztofdudek/ResearcherSkill)). Runs 30+ code experiments iteratively against measurable metrics. For later use.

## Structure

```
skills/
  strategic-researcher/
    SKILL.md              # Strategic research & analysis skill
  researcher/
    SKILL.md              # Code experimentation skill
```

## Setup

```bash
./install.sh
```

Symlinks skills into `~/.claude/skills/` for Claude Code access.

## Usage

**Strategic research:** Ask Claude to "enter strategic researcher mode" or describe a research question about SaaS finance, GTM, RevOps, or AI operations.

**Code experimenter:** Ask Claude to "enter researcher mode" in a project with measurable optimization goals.

## Podcast Workflow

1. Run a strategic research session — a podcast script is saved to `.research/podcasts/`
2. Copy the script into [Google NotebookLM](https://notebooklm.google.com/) and generate an Audio Overview
3. Listen on your commute
