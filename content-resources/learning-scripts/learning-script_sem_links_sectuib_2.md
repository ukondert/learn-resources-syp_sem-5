
# Sources for SEM - Script

## Sources for SEM - Section `Projektstart & Grundlagen der KI-Assistenz`

## AI Agent Best Practices: 12 Lessons from AI Pair Programming for Developers

### Summary

This source provides practical best practices for effective AI pair programming, drawing on six months of daily experience. It outlines a systematic approach where developers plan thoroughly and collaboratively with AI before writing code, utilising edit-test loops for robust implementation. Key to success is curating AI context with specific file references and codebase summaries, avoiding vague prompts or large code dumps. The article also stresses the importance of demanding step-by-step reasoning from the AI to prevent errors and advocates for rigorous review of all AI-generated code, treating it like a junior developer's pull request. Ultimately, it frames AI as a powerful implementation assistant rather than an architectural decision-maker, emphasising that human oversight and disciplined workflows are paramount for maximising productivity.

- source: https://forgecode.dev/blog/ai-agent-best-practices/

## Context Engineering - What it is, and techniques to consider

### Summary

This article from LlamaIndex introduces "Context Engineering," a crucial concept for developing effective AI agents that goes beyond traditional "prompt engineering." It emphasises the careful curation of an LLM's context window with the most relevant information from various sources. The text breaks down the components of context, including system prompts, user input, different forms of memory (short-term and long-term), retrieved knowledge, tools, and structured outputs, highlighting the challenge of selecting and fitting the right context within limitations. Finally, it explores practical techniques and strategies for context engineering, such as optimising knowledge base and tool selection, compressing and ordering context, making informed decisions about long-term memory, leveraging structured information, and employing "workflow engineering" to break down complex tasks and prevent context overload.

- source: https://www.llamaindex.ai/blog/context-engineering-what-it-is-and-techniques-to-consider

## Get started with GitHub Copilot in VS Code

This comprehensive tutorial introduces users to GitHub Copilot's capabilities within Visual Studio Code, demonstrating how this AI-powered tool revolutionises code development. It guides users through building a task management application, highlighting key features such as intelligent code completions for faster coding and agent mode for autonomous feature development, which can implement complex features from natural language prompts. The tutorial also covers inline chat for precise code adjustments, customisation options through instructions and specialised chat modes to tailor the AI to individual preferences, and smart actions that integrate AI functionality directly into the workflow, such as generating commit messages. Ultimately, the resource aims to equip developers with the skills to leverage AI for more efficient, personalised, and integrated coding experiences within VS Code.

- source: https://code.visualstudio.com/docs/copilot/getting-started

## GitHub Copilot in VS Code

This guide introduces GitHub Copilot as an AI-powered coding assistant seamlessly integrated into Visual Studio Code, offering a comprehensive suite of features to streamline development. It highlights core capabilities like inline code completions, autonomous coding for complex tasks, natural language chat for interactive coding, and smart actions for common development scenarios. The document also provides a practical getting started guide with steps for basic code completion, autonomous coding, and inline chat, alongside various usage scenarios such as code analysis, debugging, and feature implementation. Finally, it outlines how users can customise the AI to their workflow through custom instructions, language models, and chat modes, ensuring the tool adapts to individual coding styles and project requirements.

- source: https://code.visualstudio.com/docs/copilot/overview

## How to write better prompts for GitHub Copilot

This extensive GitHub article provides a comprehensive guide on how to write better prompts for GitHub Copilot, an AI code generation tool. The core purpose is to help developers overcome the initial learning curve of using AI assistants by offering practical advice and examples for effective communication with Copilot. It defines "prompts" and "prompt engineering" from a developer's perspective, focusing on how code blocks, comments, and natural language instructions can guide the AI. The article outlines three key best practices: setting a high-level goal, making requests simple and specific, and providing clear examples. Additionally, it offers three further tips: experimenting with prompts, keeping relevant tabs open for context, and adhering to good coding practices, all to maximise the accuracy and usefulness of AI-generated code.

- source: https://github.blog/developer-skills/github/how-to-write-better-prompts-for-github-copilot/

## The New Skill in AI is Not Prompting, It's Context Engineering

The field of AI is shifting its focus from simple "prompt engineering" to the more comprehensive discipline of Context Engineering, which involves providing Large Language Models (LLMs) with all the necessary information for a task. This concept expands beyond a single prompt, encompassing instructions, user prompts, short-term memory (conversation history), long-term memory, retrieved external information (RAG), available tools, and structured output definitions. The quality of this context is paramount, as it transforms a basic AI demonstration into a truly "magical" and effective agent, where failures are often due to insufficient or poorly structured context rather than the model itself. Ultimately, context engineering is a dynamic, system-based approach to deliver the right information and tools, in the correct format, precisely when an LLM needs them to succeed.

- source: https://www.philschmid.de/context-engineering

## Use chat modes in VS Code

This article introduces chat modes in Visual Studio Code, which are pre-configured settings designed to optimise the chat experience for diverse development tasks. It highlights three built-in modes: Ask for general queries, Edit for direct code modifications, and Agent for autonomous, multi-file edits. Beyond these, users can create custom chat modes using Markdown files, allowing them to define specific instructions, select relevant tools, and even specify an AI model for tailored workflows like planning features or conducting code reviews. These custom modes, stored locally or in a user profile, enhance efficiency by enabling quick switching between specialised chat configurations without manual setup.

- source: https://code.visualstudio.com/docs/copilot/customization/custom-chat-modes

## Use custom instructions in VS Code

This documentation outlines how to leverage custom instructions in VS Code to fine-tune how AI, specifically GitHub Copilot, assists with development tasks. By defining common guidelines and rules in Markdown files, users can ensure consistent AI responses that align with specific coding practices and project requirements. These instructions can be applied universally across a workspace via a .github/copilot-instructions.md file, or selectively to specific files or tasks using multiple .instructions.md files with an applyTo property. Furthermore, VS Code offers the flexibility to generate instructions files automatically from existing workspaces and sync user instructions across different devices, streamlining the AI-assisted development workflow.

- source: https://code.visualstudio.com/docs/copilot/customization/custom-instructions

## What are the best AI code assistants for vscode in 2025?

This Reddit discussion from 2025 provides a lively forum for developers to share their experiences and recommendations for AI code assistants within Visual Studio Code. The original poster, a seasoned JavaScript/React developer, seeks updated advice on the best options beyond GitHub Copilot, specifically for personal projects. Key themes emerging from the community responses include the importance of autocomplete features, the growing popularity of agentic AI tools that can handle multi-file changes, and the debate between using VS Code extensions versus entirely new IDEs or VS Code forks like Cursor and Windsurf. Users also frequently discuss the trade-offs between various AI models, the value of context awareness in codebases, and concerns about privacy and "AI slop" or hallucinations.

- source: https://www.reddit.com/r/vscode/comments/1je1i6h/what_are_the_best_ai_code_assistants_for_vscode/#

