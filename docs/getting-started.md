# Getting Started with SaaS Development Agents

This guide will walk you through creating and using the specialized Claude Code agents for SaaS development.

## Table of Contents
- [Prerequisites](#prerequisites)
- [How to Create an Agent](#how-to-create-an-agent)
- [How to Use an Agent](#how-to-use-an-agent)
- [Best Practices](#best-practices)
- [Troubleshooting](#troubleshooting)

## Prerequisites

1. **Claude Code Access**: You need access to [Claude Code](https://claude.ai/code)
2. **Custom Agent Support**: Ensure your Claude Code instance supports custom agents
3. **Development Environment**: Have your development environment set up (IDE, terminal, etc.)

## How to Create an Agent

### Step 1: Choose Your Agent Template

Navigate to the appropriate agent category in the `/agents/` directory:

- **Core Development**: `/agents/core/` (Backend, Frontend, System Architect, DevOps)
- **Quality & Security**: `/agents/quality/` (QA Testing, Security Analyst)
- **Product & Design**: `/agents/product/` (Product Manager, UX/UI Designer)

### Step 2: Import the Agent Configuration

1. **Open Claude Code**
2. **Navigate to Agent Settings** (usually in the settings or preferences menu)
3. **Create New Agent** or **Import Agent**
4. **Upload the JSON file** for your chosen agent
5. **Verify Configuration** - Ensure all fields are properly loaded:
   - `name`: Agent identifier
   - `description`: Agent's purpose and use case
   - `color`: Visual identifier
   - `model`: Claude model version
   - `instructions`: Complete behavioral guidelines

### Step 3: Activate the Agent

1. **Save the Agent Configuration**
2. **Select the Agent** from your available agents list
3. **Test the Agent** with a simple query to ensure it's working

## How to Use an Agent

### Basic Usage Pattern

Each agent is designed to handle specific aspects of SaaS development. Here's how to interact with them effectively:

#### 1. Context Setting
Start by providing context about your project:
```
I'm building a SaaS project management application with the following requirements:
- Multi-tenant architecture
- React frontend with TypeScript
- Node.js backend with PostgreSQL
- Deployed on AWS

Can you help me with [specific task]?
```

#### 2. Specific Requests
Be specific about what you need:
```
// Good Examples:
"Design the database schema for user management with role-based access control"
"Create a React component for file upload with progress indicators"
"Set up CI/CD pipeline for automated testing and deployment"
"Write comprehensive test cases for the authentication API"

// Less Effective:
"Help me with my app"
"Fix my code"
```

### Agent-Specific Usage

#### Backend Engineer
**Best for:**
- API design and implementation
- Database schema design
- Authentication and authorization
- Performance optimization
- Error handling patterns

**Example Usage:**
```
I need to create a REST API for a multi-tenant SaaS application. 
Can you help me design the endpoints for:
1. User management
2. Organization/tenant management  
3. Subscription billing integration
4. Audit logging

Please include both Node.js and ASP.NET Core examples.
```

#### Frontend Engineer
**Best for:**
- Component architecture
- State management
- Form handling
- Performance optimization
- Accessibility implementation

**Example Usage:**
```
I need to create a dashboard component for a SaaS analytics platform.
Requirements:
- Real-time data updates
- Responsive design
- Dark/light theme support
- Accessible for screen readers

Can you provide both React and Angular implementations?
```

#### System Architect
**Best for:**
- Technology stack decisions
- Architecture planning
- Scalability design
- Integration planning
- Documentation structure

**Example Usage:**
```
I'm designing a SaaS customer support platform that needs to handle:
- 10,000+ concurrent users
- Real-time chat and notifications
- File attachments up to 100MB
- Integration with 20+ third-party services
- 99.9% uptime requirement

Can you recommend an architecture and technology stack?
```

#### DevOps Engineer
**Best for:**
- CI/CD pipeline setup
- Infrastructure as code
- Monitoring and alerting
- Security configurations
- Performance optimization

**Example Usage:**
```
I need to set up a production deployment pipeline for a SaaS application:
- React frontend served from CDN
- Node.js API with auto-scaling
- PostgreSQL database with backups
- Multiple environments (dev, staging, prod)
- Blue-green deployment strategy

Can you provide Terraform configs for AWS, Azure, and GCP?
```

#### QA Testing Engineer
**Best for:**
- Test strategy planning
- Test automation
- Performance testing
- Security testing
- Quality metrics

**Example Usage:**
```
I need a comprehensive testing strategy for a SaaS e-commerce platform:
- Unit tests for business logic
- Integration tests for APIs
- E2E tests for critical user journeys
- Load testing for Black Friday traffic
- Security testing for payment processing

Can you create test cases and automation examples?
```

#### Security Analyst
**Best for:**
- Security audits
- Vulnerability assessments
- Compliance planning
- Security implementation
- Incident response

**Example Usage:**
```
I need a security audit for a healthcare SaaS application:
- HIPAA compliance requirements
- Patient data encryption
- API security and rate limiting
- Authentication and authorization
- Security monitoring and alerts

Can you provide a security checklist and implementation guide?
```

#### Product Manager
**Best for:**
- Requirements analysis
- MVP definition
- User story creation
- Feature prioritization
- Documentation

**Example Usage:**
```
I have an idea for a SaaS project collaboration tool. Can you help me:
1. Define the MVP feature set
2. Create user personas and stories
3. Prioritize features for first release
4. Define success metrics
5. Create a product roadmap

The target market is remote development teams of 5-50 people.
```

#### UX/UI Designer
**Best for:**
- Design system creation
- User experience planning
- Interface design
- Accessibility planning
- Responsive design

**Example Usage:**
```
I need to design the user interface for a SaaS financial dashboard:
- Complex data visualization
- Multiple user roles (admin, accountant, viewer)
- Responsive design for mobile use
- High contrast mode for accessibility
- White-label customization support

Can you create a design system and component specifications?
```

## Best Practices

### 1. **Start with System Architect**
Begin your SaaS project by consulting the System Architect agent for overall architecture and technology stack decisions.

### 2. **Use Product Manager for Planning**
Before diving into development, use the Product Manager agent to define requirements, user stories, and MVP scope.

### 3. **Combine Agents Effectively**
- System Architect → Backend Engineer → Frontend Engineer (for implementation)
- Product Manager → UX/UI Designer → Frontend Engineer (for user features)
- Backend Engineer → Security Analyst → DevOps Engineer (for deployment)

### 4. **Provide Complete Context**
Always include:
- Your technology stack preferences
- Target user base and scale
- Business requirements
- Performance requirements
- Budget constraints

### 5. **Iterate and Refine**
- Start with high-level guidance
- Ask for specific implementations
- Request code reviews and improvements
- Get recommendations for next steps

### 6. **Document Decisions**
Save important architectural decisions and recommendations from agents for future reference.

## Troubleshooting

### Agent Not Responding as Expected

**Issue**: Agent gives generic responses instead of specialized guidance.

**Solution**: 
- Check that you imported the correct JSON file
- Verify all instruction text is properly loaded
- Provide more specific context about your SaaS project

### Conflicting Recommendations Between Agents

**Issue**: Different agents suggest different approaches.

**Solution**:
- Start with System Architect for overall guidance
- Discuss conflicts with the System Architect agent
- Consider your specific requirements and constraints

### Agent Lacks Knowledge of Specific Technology

**Issue**: Agent doesn't provide examples for your preferred technology stack.

**Solution**:
- Our agents support multiple stacks - ask specifically for alternatives
- Request the agent to adapt patterns to your preferred technology
- Consider if a different technology might be better for SaaS development

### Performance Issues

**Issue**: Agent responses are slow or timeout.

**Solution**:
- Break complex requests into smaller, specific questions
- Focus on one aspect at a time
- Use the most appropriate agent for each task

## Next Steps

1. **Start with Agent Overview**: Read the [Agent Overview](agent-overview.md) to understand how agents work together
2. **Choose Your First Agent**: Based on your current project phase
3. **Create Your Development Plan**: Use multiple agents to plan your complete SaaS development workflow
4. **Join the Community**: Contribute improvements and new agent ideas

## Support

For issues with:
- **Claude Code Platform**: Visit [Claude Code Documentation](https://docs.anthropic.com/claude/docs)
- **Agent Templates**: Create an issue in this repository
- **SaaS Development Questions**: Use the appropriate agent for guidance

Happy building! 🚀