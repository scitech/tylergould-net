activate :dotenv, env: '.env.build'

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :build do
  activate :minify_css
  activate :minify_javascript
end

activate :directory_indexes

activate :livereload

activate :blog do |blog|
  blog.sources = "posts/{year}-{month}-{day}-{title}"
  blog.permalink = "{year}/{month}/{day}/{title}"
  blog.layout = "blog_layout"
end

activate :deploy do |deploy|
  deploy.deploy_method   = :sftp
  deploy.host            = ENV['HOSTNAME']
  deploy.port            = ENV['PORT']
  deploy.path            = ENV['WEB_ROOT']
end
