require 'bundler/capistrano'
require 'rvm/capistrano'

load "config/recipes/requirements"
load "config/recipes/db"
load "config/recipes/rvm"
load "config/recipes/passenger"
# load "config/recipes/sphinx"

set :application, "holachef"
set :scm, :git
set :repository,  "https://github.com/rakeshpatri/recipe_dining"
set :deploy_via, :remote_cache

set :use_sudo, false
set :keep_releases, 3

set :precompile_only_if_changed, true
set :rvm_type, :user

default_run_options[:pty] = true 

before "db:configure", "requirements:check"
before "deploy:setup", "db:configure"
before "deploy:assets:precompile", "db:symlink"
after  "deploy:update_code", "db:symlink"
after "deploy:update_code", "deploy:migrate"
after "deploy:update", "deploy:cleanup"
# after "deploy:update", "deploy:set_tmp_permission"

set :rails_env, "staging"
set :deploy_to,  "/home/holachef/holachef.com"
set :domain, "holachef.com"
set :user, "holachef"
set :branch, "master"
set :scm_verbose, true
role :web, domain
role :app, domain
role :db, domain, :primary=>true

# task :uat do
#   set :rvm_type, :system
#   set :use_sudo, true
#   set :rails_env, "staging"
#   set :deploy_to,  "/root/www/lazuli"
#   set :domain, "162.242.241.238"
#   set :user, "root"
#   set :branch, "master"
#   set :scm_verbose, true
#   set :delayed_job_args_per_role, {:worker_1 => "--queues=publish,thumbnail,mail_sender -i=1", :worker_2 =>"--queue=sphinx_deltas -i=2"}
#   role :web, domain
#   role :app, domain
#   role :worker_1,domain
#   role :worker_2,domain
#   role :db, domain, :primary=>true
# end

# namespace :deploy do
#   task :set_tmp_permission do
#     run "chmod -R 777 #{current_path}/tmp/"
#   end
# end


# task :prod do
#   set :rails_env, "production"
#   set :deploy_to,  "/home/sodel/rails_apps/lazuli"
#   set :domain, "192.168.1.119"
#   set :user, "sodel"
#   set :branch, "master"
#   set :scm_verbose, true
#   role :web, domain
#   role :app, domain
#   role :db, domain, :primary=>true
#   set :deploy_env, "qa"
# end

