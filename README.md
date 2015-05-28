# `filter_by_frontmatter` Custom Jekyll Filter

When you need to filter content by custom Frontmatter types (and not by tags/categories).

### Installation:
- Copy `filter_by_frontmatter.rb` to your Jekyll plugin folder (default is `./_plugins`).
- The `| filter_by_frontmatter` filter should be available in your Liquid Templates now.

### Example Usage:
`{{ site.posts | filter_by_frontmatter:'coffee_varietal','caturra' }}` -> (list of posts with the custom frontmatter 'coffee_varietal' of 'caturra')
`{{ site.posts | filter_by_frontmatter:'coffee_varietal','caturra' | size }}` -> 5
