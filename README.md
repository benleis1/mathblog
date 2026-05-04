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

3. Visit `http://localhost:4000/` in your browser

### Writing Posts

Create new posts in the `_posts` directory with the format:
```
YYYY-MM-DD-title.md
```

Use the _posts/template for a front matter template

* `<div class=boxed markdown=1>` will produce the yellow text boxes
*  ![]({{ site.baseurl }}/assets/img/[post]/[image file]) is the format to include images


#### Snippets
Type the snippet and press tab 

* frontmatter
* mdimage
* mdlink

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

## Directory Structure

```
.
├── _config.yml          # Main site configuration
├── _data/               # Site data files (authors, navigation menus)
├── _includes/           # Reusable HTML components and partials
├── _layouts/            # Page templates (post, tags, etc.)
├── _pages/              # Standalone pages (About, Resources, etc.)
├── _plugins/            # Jekyll plugins for extended functionality
├── _posts/              # Blog posts (YYYY-MM-DD-title.md format)
├── _site/               # Generated site output (ignored by git)
├── assets/              # Static files
│   ├── css/            # Custom stylesheets
│   ├── favicons/       # Site favicon files
│   ├── img/            # Images organized by post
│   └── videos/         # Video files
├── drafts/              # Draft posts not yet published
├── Gemfile              # Ruby dependencies
└── index.html           # Homepage
```

