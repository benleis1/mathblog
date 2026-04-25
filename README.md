# MathBlog - Jekyll Math Blog with Search

A modern Jekyll blog powered by the Chirpy theme, designed for sharing mathematical content with built-in search functionality.

## Features

- **Modern Design**: Clean, responsive layout with dark/light mode toggle
- **Built-in Search**: Powerful search functionality to find content easily
- **Math Support**: MathJax integration for beautiful mathematical notation
- **Categories & Tags**: Organize posts by topics
- **Archive**: Timeline view of all posts
- **SEO Optimized**: Built-in SEO tags and sitemap
- **Syntax Highlighting**: Beautiful code highlighting for technical content

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

3. Visit `http://localhost:4000/mathblog` in your browser

### Writing Posts

Create new posts in the `_posts` directory with the format:
```
YYYY-MM-DD-title.md
```

Example front matter for a math post:
```yaml
---
title: Your Post Title
date: YYYY-MM-DD HH:MM:SS -0400
categories: [Category1, Category2]
tags: [tag1, tag2, tag3]
math: true
---
```

### Using Math

The site supports MathJax for rendering mathematical notation:

- Display math: `$$e=mc^2$$`
- Inline math: `$e=mc^2$` or `\\( e=mc^2 \\)`

Make sure to set `math: true` in your post's front matter.

## Navigation

The site includes several navigation tabs:
- **Categories**: Browse posts by category
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

## Theme

This site uses the [Chirpy theme](https://github.com/cotes2020/jekyll-theme-chirpy), a feature-rich Jekyll theme designed for technical writing and blogging.

## License

Your content is your own. The Chirpy theme is licensed under MIT.
