#!/bin/bash

# GitHub Repository Setup Script
# Configures repository description, topics, and features

REPO="nelgonzalez1/saas-ai-agents"

echo "🔧 Setting up GitHub repository configuration..."

# Check if GitHub CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed."
    echo "📥 Install it from: https://cli.github.com/"
    echo "🔑 Then run: gh auth login"
    exit 1
fi

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo "🔑 Please authenticate with GitHub CLI first:"
    echo "gh auth login"
    exit 1
fi

echo "📝 Setting repository description..."
gh repo edit $REPO --description "Complete AI agent collection for accelerating SaaS development - from MVP to scale. Expert guidance for full-stack development, cloud infrastructure, security, and product strategy."

echo "🏷️ Adding repository topics..."
gh repo edit $REPO --add-topic saas
gh repo edit $REPO --add-topic ai-agents  
gh repo edit $REPO --add-topic claude-code
gh repo edit $REPO --add-topic full-stack-development
gh repo edit $REPO --add-topic react
gh repo edit $REPO --add-topic angular
gh repo edit $REPO --add-topic nodejs
gh repo edit $REPO --add-topic dotnet-core
gh repo edit $REPO --add-topic aws
gh repo edit $REPO --add-topic azure
gh repo edit $REPO --add-topic devops
gh repo edit $REPO --add-topic product-management
gh repo edit $REPO --add-topic security-testing
gh repo edit $REPO --add-topic startup-tools
gh repo edit $REPO --add-topic saas-development
gh repo edit $REPO --add-topic multi-tenant
gh repo edit $REPO --add-topic scalability

echo "⚙️ Enabling repository features..."
# Note: Some features may require additional API calls or manual setup
gh repo edit $REPO --enable-issues=true
gh repo edit $REPO --enable-wiki=true
# Projects and Discussions may need to be enabled manually

echo "✅ Repository setup complete!"
echo "🌐 Visit: https://github.com/$REPO"
echo ""
echo "📋 Manual steps remaining:"
echo "   1. Enable Discussions in Settings → General → Features"  
echo "   2. Enable Projects in Settings → General → Features"
echo "   3. Add social preview image (optional)"
echo "   4. Consider adding LICENSE file"

# Optional: Create initial issue templates
echo ""
echo "🎯 Creating issue templates..."
mkdir -p .github/ISSUE_TEMPLATE

cat > .github/ISSUE_TEMPLATE/agent-request.md << 'EOF'
---
name: New Agent Request
about: Suggest a new SaaS development agent
title: '[AGENT] '
labels: enhancement, agent-request
assignees: ''
---

## Agent Proposal

**Agent Name:** [Agent Name]
**Category:** agents/[category]/
**Purpose:** [Brief description of what this agent would do]

## Target Users
Who would use this agent and in what scenarios?

## Key Responsibilities
- [ ] [Responsibility 1]
- [ ] [Responsibility 2] 
- [ ] [Responsibility 3]

## Technology Focus
What technologies, tools, or frameworks should this agent specialize in?

## SaaS Use Cases
Describe 2-3 specific SaaS development scenarios where this agent would be valuable.

## Priority Justification
Why is this agent important for the SaaS development community?
EOF

cat > .github/ISSUE_TEMPLATE/bug-report.md << 'EOF'
---
name: Bug Report
about: Report an issue with an existing agent
title: '[BUG] '
labels: bug
assignees: ''
---

## Bug Description
A clear description of the issue.

## Agent Affected
Which agent template has the issue?

## Expected Behavior
What should happen?

## Actual Behavior  
What actually happens?

## Steps to Reproduce
1. Step one
2. Step two
3. Step three

## Additional Context
Any other information that might be helpful.
EOF

echo "📝 Issue templates created in .github/ISSUE_TEMPLATE/"
echo "💾 Don't forget to commit and push these changes!"