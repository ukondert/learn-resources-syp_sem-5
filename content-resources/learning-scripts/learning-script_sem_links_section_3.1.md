# Bereitstellung von Tools für KI-Agenten (LLM's) mittels MCP

## What Is MCP, and Why Is Everyone – Suddenly!– Talking About It?

This Hugging Face article introduces the Model Context Protocol (MCP), an open standard developed by Anthropic, which aims to bridge the gap between AI models and external data or tools. It highlights how traditional AI models are constrained by their limited training data and struggle to interact with real-world information, making integrations cumbersome. MCP offers a standardised way for AI agents to discover, connect to, and utilise diverse external services, from files and databases to APIs, moving beyond custom coding or proprietary plugins. The article explores the reasons behind MCP's recent surge in popularity, despite its initial quiet launch in November 2024, attributing it to its role in solving the "integration problem" for AI agents, its open-source nature and growing community adoption. Ultimately, the text positions MCP as a game-changer for building more integrated and context-aware AI systems, enabling multi-step workflows, environmental understanding, and even collaborative AI agents, while acknowledging that it's an evolving technology with its own set of challenges.

- source: https://huggingface.co/blog/Kseniase/mcp

## 13+ Popular MCP servers for developers to unlock AI actions

This document provides an in-depth guide to Model Context Protocol (MCP) servers, defining them as an essential bridge between AI agents and real-world tools. It explains how MCP servers allow AI to move beyond theoretical conversations to actively performing tasks like code automation, data management, and process automation through simple natural-language commands. The text highlights the growing importance of MCP for developers, detailing various scenarios where these servers transform workflows. It then offers a comprehensive, curated list of 13+ popular MCP servers, including GitHub, Playwright, and Supabase MCPs, outlining their core uses, advantages, and ideal project fits. Finally, the article provides crucial criteria for choosing an MCP server, emphasising performance, ease of integration, and critically, security and access controls, before offering practical advice on getting started and advanced strategies for maximising MCP utility.

- source: https://www.dronahq.com/popular-mcp-servers/

## A Deep Dive Into MCP and the Future of AI Tooling

This Andreessen Horowitz article explores the Model Context Protocol (MCP), an open standard designed to simplify how AI agents interact with external tools, data, and services. The core idea is to establish a shared language for AI models, similar to how APIs unified the internet, overcoming the current fragmentation where developers must build custom logic for each system an AI agent integrates with. The article delves into what MCP is, how it changes AI's interaction with tools, its current use cases, and the challenges that need addressing for its widespread adoption. Notably, MCP empowers AI agents to autonomously select, order, and chain tools to accomplish tasks, even incorporating human oversight. While currently prevalent in developer-centric workflows and coding environments, the article anticipates its expansion into diverse applications and highlights crucial areas for future development, such as robust authentication, authorisation, and improved discoverability of MCP servers.

- source: https://a16z.com/a-deep-dive-into-mcp-and-the-future-of-ai-tooling/

## Build Your First Local MCP Server: A Guide for AI Developers

This guide from Arsturn introduces the Model Context Protocol (MCP), an open standard designed to revolutionise how AI models interact with diverse external information and tools. The core concept revolves around enabling AI to function as a "universal translator," breaking free from the limitations of pre-trained data to access real-time, contextual information like local files, web content, and APIs. The article details the architecture of MCP, comprising MCP Clients (AI applications), MCP Servers (exposing data and tools), and an MCP Host (the user interface), illustrating how these components work together to create highly customisable and powerful AI assistants. Finally, it outlines essential prerequisites, such as an AI client like Claude Desktop and Node.js, before demonstrating how to build a basic local MCP server to understand the protocol's practical application.

- source: https://www.arsturn.com/blog/build-your-first-local-mcp-server-a-guide-for-ai-developers

## How to build and deliver an MCP server for production

This Docker blog post addresses the "pain points" developers encounter when building and deploying AI tools using the Model Context Protocol (MCP), a standard for running tools with AI agents. It highlights difficulties with runtime environments, security concerns due to LLM access to host systems and plaintext sensitive data, and challenges in discovering and managing an increasing number of tools. Docker proposes its platform as a solution, offering a stable runtime through containerisation, sandboxed isolation for enhanced security, and an MCP Gateway to simplify tool management. Furthermore, the MCP Catalog aims to provide a trusted, centralised hub for tool discovery and distribution, while new Docker Secrets functionality enhances the secure handling of sensitive data within containers.

- source: https://www.docker.com/blog/build-to-prod-mcp-servers-with-docker/

## Model Context Protocol (MCP)

This document introduces the Model Context Protocol (MCP), an open standard designed to simplify how AI applications, particularly large language model (LLM) agents, connect to various data services and tools. It addresses the existing complexities of integrating AI agents with diverse data sources and APIs by proposing a standardised, client-server architecture. MCP aims to make these AI agents more composable, modular, shareable, reusable, and secure, thereby fostering rapid innovation and development. The protocol's architecture allows an MCP client (such as an AI assistant or development environment) to connect to MCP servers that expose specific tools, resources, and prompts, enabling AI to interact with databases, manage infrastructure, and integrate with agent development kits.

- source: https://www.jfokus.se/aifokus25-preso/MCP-for-LLM-Agents-Infrastructure-APIs-and-Data-Services.pdf

## Use MCP servers in VS Code

This guide introduces the Model Context Protocol (MCP), an open standard enabling AI models, particularly within VS Code, to interact with external tools and services via a unified interface. MCP operates on a client-server architecture, where VS Code acts as a client requesting actions from MCP servers, which in turn provide specific functionalities as "tools" for tasks like file operations or API interactions. The article comprehensively details how to set up and manage these MCP servers within VS Code, covering installation from various sources, configuration options (user, workspace, or dev container), and crucial security considerations due to the arbitrary code execution capabilities of servers. Ultimately, MCP extends AI assistant capabilities by standardising tool integration, allowing users to leverage these tools, resources, and pre-configured prompts directly in agent mode within VS Code's chat interface.

- source: https://code.visualstudio.com/docs/copilot/customization/mcp-servers

## Use chat modes in VS Code

This article introduces chat modes in Visual Studio Code, which are pre-configured settings designed to optimise the chat experience for diverse development tasks. It highlights three built-in modes: Ask for general queries, Edit for direct code modifications, and Agent for autonomous, multi-file edits. Beyond these, users can create custom chat modes using Markdown files, allowing them to define specific instructions, select relevant tools, and even specify an AI model for tailored workflows like planning features or conducting code reviews. These custom modes, stored locally or in a user profile, enhance efficiency by enabling quick switching between specialised chat configurations without manual setup.

- sources: https://code.visualstudio.com/docs/copilot/customization/custom-chat-modes

## GitHub: awesome-mcp-servers

This GitHub repository, "punkpeye/awesome-mcp-servers," serves as a curated list of Model Context Protocol (MCP) servers, acting as a comprehensive directory for integrating Artificial Intelligence (AI) models with various digital resources. The central idea of MCP is to enable AI models to securely interact with local and remote resources, extending their capabilities beyond their inherent functions. The repository organises these servers into distinct categories like "Databases," "Code Execution," "Browser Automation," and "Finance & Fintech," demonstrating the broad applicability of MCP across numerous domains. Each entry provides a brief description, indicating the server's programming language, whether it's a cloud or local service, and supported operating systems, thus offering a structured overview for developers and AI enthusiasts seeking to enhance AI model interactions.

- sources: https://github.com/punkpeye/awesome-mcp-servers