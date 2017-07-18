# NOTE: bundle exec cap staging deploy:setup deploy --trace

# config valid only for current version of Capistrano
lock '3.8.2'

set :application, %x(basename \`pwd\`).chomp
set :front_application, "#{fetch(:application)}-front"

# https://confluence.atlassian.com/bitbucketserver/permanently-authenticating-with-git-repositories-776639846.html
# http://capistranorb.com/documentation/getting-started/authentication-and-authorisation/
set :repo_url, 'https://github.com/efigence/dummy_rails_app.git'
set :front_repo_url, 'https://@github.com/efigence/dummy_rails_app-front.git'

set :front_install_command, <<-CMD
  bash -c "source $HOME/.nvm/nvm.sh && nvm use 7 && npm install && npm run build"
CMD

set :scm, :new_artrails_capistrano
set :new_artrails_capistrano_sudo_as, 'mongrel'

set :deploy_to, '/home/httpd/html/refinery'

# Default value for :linked_files is []
# %w(database.yml secrets.yml sidekiq.yml settings.yml settings/production.yml)
set :new_artrails_capistrano_config_files, %w(database.yml secrets.yml)

# Default value for linked_dirs is []
# 'log' - we symlink to var log instead
append :linked_dirs, 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads', 'db/uploads'

set :bundle_without, %w[development test].join(' ')
set :bundle_path, -> { shared_path.join('vendor/bundle') }
set :bundle_flags, '--deployment --local'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }
set :local_user, `whoami`.chomp

set :new_artrails_capistrano_log_dir_name, 'refinery'

# comment this out if deploying Rails without SPA app
after 'deploy:assets:precompile', 'deploy:front'
