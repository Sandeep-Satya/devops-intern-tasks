# strapi-local-setupTask 1 — Strapi: local setup, Admin, and sample content
This document records the steps I followed to complete Task #1: getting Strapi running locally, creating a Blog Post content type in the Admin, adding a sample entry, verifying with the API, and preparing the work for GitHub.

LOOM drive link :- https://drive.google.com/file/d/1jE8FMvseZeuPU2uWDM29XNVoQic4ZXyZ/view?usp=sharing
## Objective

The goal of this task is to:
- Run the Strapi project locally
- Understand the project structure
- Access the Admin Panel
- Create a sample content type
- Add sample content
- Verify the API response
- Share the work using GitHub and a Loom video

---

## Environment Details

- Operating System: Windows 10  
- Node.js: v20.20.0  
- npm: v10.8.2  
- Yarn: Installed via npm  
- Git: Git Bash  
- Editor: VS Code / Notepad  

---

## Steps Followed

### 1. Clone the Strapi Repository

```bash
git clone https://github.com/strapi/strapi
cd strapi

2. Install Dependencies

Strapi is a monorepo and uses Yarn workspaces.

yarn install

3. Build the Strapi Packages
yarn build


This step builds all internal Strapi packages using Nx.

4. Run Strapi Locally
yarn develop


Once the command runs successfully, Strapi starts in development mode.

Admin Panel Setup

Admin URL: http://localhost:1337/admin

Created an admin user using the signup screen

Successfully logged into the Strapi Admin Panel

Sample Content Type Creation
Content Type Name

Blog Post

Fields Added

title – Text

description – Text

publishedAt – Date

Sample Data

Created a sample Blog Post entry from the Admin Panel

Published the entry successfully

API Verification

Verified that the content is accessible via REST API:

http://localhost:1337/api/blog-posts


The API returned the created content correctly.

Repository Structure (High-Level)

packages/ – Core Strapi packages and plugins

examples/ – Example applications

docs/ – Documentation

scripts/ – Build and development scripts

package.json – Monorepo configuration

Loom Video Recording

Loom video explaining:

Local setup

Build process

Admin panel access

Content type creation

API verification