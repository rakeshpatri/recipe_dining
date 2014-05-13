

# default_run_options[:shell] = '/bin/bash'
set :bundle_cmd, "/home/holachef/.gems/bin/bundle"
set :default_environment, {
  
  'PATH' => "$PATH:/home/holachef/ruby/bin",
  'GEM_HOME'        => "/home/holachef/.gems",
  'GEM_PATH'        => "/home/holachef/.gems",
  'BUNDLE_PATH'     => "/home/holachef/.gems"
}

default_run_options[:pty] = true

require 'bundler/capistrano'
# be sure to change these
set :user, 'holachef'
set :domain, 'holachef.com'
set :application, 'holachef'

# the rest should be good
set :repository,  "git@bitbucket.org:rakeshpatri/recipe.git"
set :deploy_to, "/home/#{user}/#{domain}"
set :deploy_via, :remote_cache
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web
role :db, domain, :primary => true

load 'deploy/assets'
namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end

  task :change_permission_for_fcgi do
    run "chmod +x #{current_path}/public/dispatch.fcgi"
  end

  namespace :assets do
    desc 'Run the precompile task locally and rsync with shared'
    task :precompile, :roles => :web, :except => { :no_release => true } do
      %x{bundle exec rake assets:precompile}
      %x{rsync --recursive --times --rsh=ssh --compress --human-readable --progress public/assets #{user}@#{domain}:#{shared_path}}
      %x{bundle exec rake assets:clean}
    end
  end
end

after "deploy:update_code", "deploy:migrate"
after "deploy:migrate", "deploy:change_permission_for_fcgi"