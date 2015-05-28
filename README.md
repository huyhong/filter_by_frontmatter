## Custom Jekyll Frontmatter Filters

When you need to filter content by custom Frontmatter types (and not by tags/categories).

### Installation:
- Copy `filter_by_frontmatter.rb` to your Jekyll plugin folder (default is `./_plugins`).

### `filter_by_frontmatter`:
`{{ site.posts | filter_by_frontmatter:'coffee_varietal','caturra' }}` -> (list of posts with the custom frontmatter 'coffee_varietal' of 'caturra')
`{{ site.posts | filter_by_frontmatter:'coffee_varietal','caturra' | size }}` -> 5

### `list_by_frontmatter`:
```
{% assign subcategories = site.posts | list_by_frontmatter: 'subcategories' %}
{% for subcategory in subcategories %}
  <li>{{subcategory}}: {{ site.posts | filter_by_frontmatter: 'subcategories',subcategory | size }}</li>
{% endfor %}
```

Outputs:
```
<ul>
  <li>subcategoryA: 1</li>
  <li>subcategoryB: 1</li>
  <li>subcategoryC: 5</li>
  ...
</ul>
```


### Notes:
- Tested on Ruby 2.1.5
- ᕕ( ᐛ )ᕗ