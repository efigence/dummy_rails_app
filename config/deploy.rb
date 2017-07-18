# HOWTO
# bundle exec cap staging deploy:setup deploy --trace

# config valid only for current version of Capistrano
lock '3.8.2'

set :application, %x(basename \`pwd\`).chomp
set :front_application, "#{fetch(:application)}-front"

# https://confluence.atlassian.com/bitbucketserver/permanently-authenticating-with-git-repositories-776639846.html
# http://capistranorb.com/documentation/getting-started/authentication-and-authorisation/
set :repo_url, 'https://rubyconvict:@github.com/efigence/dummy_rails_app.git' # "git@example.com:me/my_repo.git"
set :front_repo_url, 'https://rubyconvict:@github.com/efigence/dummy_rails_app-front.git'

set :front_install_command, <<-CMD
  bash -c "source $HOME/.nvm/nvm.sh && nvm use 7 && npm install && npm run build"
CMD

set :scm, :new_artrails_capistrano
set :new_artrails_capistrano_sudo_as, 'mongrel'

# SSHKit.config.command_map[:rake]  = 'bundle exec rake'
# SSHKit.config.command_map[:rails] = 'bundle exec rails'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"
set :deploy_to, '/home/httpd/html/refinery'

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

set :new_artrails_capistrano_config_files, %w(database.yml secrets.yml) # , 'sidekiq.yml', 'settings.yml', 'settings/production.yml'
# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"
# append :linked_files, 'config/database.yml', 'config/secrets.yml' # , 'config/sidekiq.yml', 'config/settings.yml', 'settings/production.yml'

# Default value for linked_dirs is []
# append :linked_dirs, # 'public/[assets_prefix]' is added by capistrano-rails
# 'log' - we symlink to var log instead
append :linked_dirs, 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads', 'db/uploads'

set :bundle_without, %w[development test].join(' ')
set :bundle_path, -> { shared_path.join('vendor/bundle') }
# set :bundle_flags, '--deployment --quiet'
set :bundle_flags, '--deployment --local'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }
set :local_user, `whoami`.chomp

# Default value for keep_releases is 5
# set :keep_releases, 5

set :new_artrails_capistrano_log_dir_name, 'refinery'

# comment this out if deploying Rails without SPA app
after 'deploy:assets:precompile', 'deploy:front'
