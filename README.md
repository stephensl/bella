# bella
## A College Comparison Application

## Overview

**bella** is a web-based tool designed to help high school seniors compare and contrast colleges based on various criteria such as distance from the beach, percentage of freshmen living on campus, on-campus living requirements, tuition costs, financial aid statistics, and more. Additionally, the application integrates the OpenAI API to allow users to ask questions about colleges.

## Features

- **College Information**: Fetch and display information about colleges from a public API.
- **CRUD Operations**: Create, read, update, and delete college entries.
- **Filtering and Sorting**: Filter and sort colleges based on various criteria.
- **Ask Questions**: Use the OpenAI API to ask questions about colleges.

## Installation

### Prerequisites

- Ruby 3.3.4
- Rails 7.1.3.4
- PostgreSQL
- Node.js and Yarn (for managing JavaScript dependencies)

### Setup

1. Clone the repository:
   ```sh
   git clone <repository-url>
   cd bella

Install dependencies:

sh

bundle install
yarn install

Set up the database:

sh

rails db:create
rails db:migrate
rails db:seed

Configure environment variables:

    Create a .env file in the root directory.
    Add the following keys with your respective API keys:

    sh

    COLLEGE_API_KEY=your_college_api_key
    OPENAI_API_KEY=your_openai_api_key

Run the server:

sh

rails server
