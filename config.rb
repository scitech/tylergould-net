activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
end

activate :directory_indexes

activate :livereload

activate :asset_hash

activate :blog do |blog|
  blog.sources = "posts/{year}-{month}-{day}-{title}"
  blog.permalink = "{year}/{month}/{day}/{title}"
  blog.layout = "blog_layout"
end
