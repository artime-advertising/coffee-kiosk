activate :deploy do |deploy|
  deploy.method = :git
  deploy.remote   = "github" # remote name or git url, default: origin
  # deploy.branch   = "custom-branch" # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  deploy.commit_message = "[skip ci] - Automated deploy"      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end

configure :development do
  activate :livereload
end


helpers do
  def markdown
    Kramdown::Document.new(yield).to_html
  end
end

sprockets.append_path File.join root, 'vendor'

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :relative_links, true


configure :build do
  activate :asset_hash
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end
