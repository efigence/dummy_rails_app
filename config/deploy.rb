# HOWTO
# bundle exec cap staging deploy:check:directories deploy:check:make_linked_dirs new_artrails_capistrano:release

# config valid only for current version of Capistrano
lock '3.8.2'

set :local_user, 'mkalita'

set :application, 'dummy_rails_app'

# https://confluence.atlassian.com/bitbucketserver/permanently-authenticating-with-git-repositories-776639846.html
# http://capistranorb.com/documentation/getting-started/authentication-and-authorisation/
set :repo_url, 'https://rubyconvict:@github.com/efigence/dummy_rails_app.git' # "git@example.com:me/my_repo.git"

set :scm, :new_artrails_capistrano

set :user,           'mkalita'
set :repo_url,       'https://rubyconvict:@github.com/efigence/dummy_rails_app.git' # "ssh://git@github.com/myusername/myrepository"
set :branch,         'master'
set :rsync_exclude,  %w[.git*]
set :rsync_include,  %w[]
set :rsync_options,  %w[--archive --recursive --delete --delete-excluded]
set :local_cache,    ".cache_#{fetch(:stage)}"
set :remote_cache,   'shared/cache'

SSHKit.config.command_map[:rake]  = 'bundle exec rake'
SSHKit.config.command_map[:rails] = 'bundle exec rails'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"
set :deploy_to, "/home/#{fetch(:local_user)}/dummy_rails_app"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads', 'public/assets', 'db/uploads'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5
