if File.exist?(File.join(File.dirname(__FILE__), 'personal_production.local.rb'))
  load 'config/deploy/personal_production.local.rb'
end

# Comment this out if using HA setup
after 'deploy:restart', 'maintenance:off'
