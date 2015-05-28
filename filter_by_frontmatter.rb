module Jekyll
  module CustomFrontmatterFilter
    # Returns back filtered list of posts based on custom frontmatter data types
    # Usage: {{ site.posts | filter_by_frontmatter:'subcategories','design' }}
    # => Returns all posts with the frontmatter 'subcategories' containing 'design'
    def filter_by_frontmatter(posts, frontmatter, type)
      filtered = []
      for post in posts
        filtered.push(post) if post.data[frontmatter].include? type
      end
      filtered
    end
  end
end
Liquid::Template.register_filter(Jekyll::CustomFrontmatterFilter)