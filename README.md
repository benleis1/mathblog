# MathBlog - Jekyll Math Blog with Search

A modern Jekyll blog powered by the minimal mistakes theme, designed for sharing mathematical content with built-in search functionality.

## Features

## Quick Start

### Installation

1. Install dependencies:
   ```bash
   bundle install
   ```

2. Serve the site locally:
   ```bash
   bundle exec jekyll serve
   ```
   Add --future to test posts with future dates

3. Visit `http://localhost:4000/mathblog` in your browser

### Writing Posts

Create new posts in the `_posts` directory with the format:
```
YYYY-MM-DD-title.md
```

Use the _posts/template for a front matter template

### Using Math

The site supports MathJax for rendering mathematical notation:

- Display math: `$$e=mc^2$$`
- Inline math: `$e=mc^2$`

Make sure to set `math: true` in your post's front matter.

## Navigation

The site includes several navigation tabs:
- **Tags**: Browse posts by tag
- **Archives**: Timeline view of all posts
- **About**: Information about the blog

Edit these pages in the `_tabs/` directory.

## Configuration

Main configuration is in `_config.yml`. Key settings:
- Site title, description, and author info
- Social media links
- Pagination settings
- Search configuration
- Timezone
