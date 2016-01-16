# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require File.expand_path('../app/models/post', __FILE__)

Rails.application.load_tasks

task :scrape do
  site = Post.new("http://www.xvideos.com/?k=alison+tyler")
  site.call
end
