# stage specific
set :branch, 'master'
set :front_branch, 'master'

set :rails_env, 'production' # replace 'staging'

# local overrides
load './config/deploy/personal_production.rb'

# network reachable address of the application
# e.g. "#{fetch(:application)}.dev.artegence.com:8080"
set :app_address, 'refinery.non.3dart.com'

server 'dev55.non.3dart.com', user: "#{fetch(:local_user)}", roles: %w[app db web]

# project specific hooks, tasks and task overrides

# after 'deploy:web_server:start',    'artrails:sidekiq:start'
# after 'deploy:web_server:stop',     'artrails:sidekiq:stop'

# comment out to leave it to monit
## after "deploy:web_server:restart",  "artrails:sidekiq:restart"

# after 'deploy:web_server:restart',  'artrails:sidekiq:stop'

# namespace :artrails do
#   namespace :sidekiq do
#     task :start do
#       on roles :app do
#         new_artrails_capistrano_run "nohup #{current_path}/script/sidekiq start"
#       end
#     end
#
#     task :stop do
#       on roles :app do
#         new_artrails_capistrano_run "nohup #{current_path}/script/sidekiq stop"
#       end
#     end
#
#     task :restart do
#       on roles :app, exclude: :no_release do
#         new_artrails_capistrano_run "nohup #{current_path}/script/sidekiq restart"
#       end
#     end
#   end
# end

# server config
# role :web, 'dev55.non.3dart.com'
# role :app, 'dev55.non.3dart.com'
# role :db,  'dev55.non.3dart.com', primary: true

# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}

# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}

# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "example.com",
#   user: "user_name",
#   roles: %w{web app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }
