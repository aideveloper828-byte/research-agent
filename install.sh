#!/bin/bash
# Install research agent skills into Claude Code

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"

echo "Installing research agent skills..."

# Strategic Researcher skill
mkdir -p "$CLAUDE_SKILLS_DIR/strategic-researcher"
ln -sf "$SCRIPT_DIR/skills/strategic-researcher/SKILL.md" "$CLAUDE_SKILLS_DIR/strategic-researcher/SKILL.md"
echo "  Installed: strategic-researcher -> $CLAUDE_SKILLS_DIR/strategic-researcher/SKILL.md"

# Code Experimenter skill (from ResearcherSkill project)
mkdir -p "$CLAUDE_SKILLS_DIR/researcher"
ln -sf "$SCRIPT_DIR/skills/researcher/SKILL.md" "$CLAUDE_SKILLS_DIR/researcher/SKILL.md"
echo "  Installed: researcher -> $CLAUDE_SKILLS_DIR/researcher/SKILL.md"

echo ""
echo "Done. Skills are now available in Claude Code."
echo ""
echo "Usage:"
echo "  Strategic research:  Ask Claude to enter 'strategic researcher mode'"
echo "  Code experimenter:   Ask Claude to enter 'researcher mode'"
