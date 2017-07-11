if File.exist?(File.join(File.dirname(__FILE__), 'personal_production.local.rb'))
  load 'config/deploy/personal_production.local.rb'
end

# after 'deploy:update_code', 'isitworking:touch'
# after 'deploy', 'mark_revision'
after 'deploy:restart', 'maintenance:off'

# # is it working
# namespace :isitworking do
#   task :touch, roles: :web, except: { no_release: true } do
#     cmd = %( sudo -iu #{process_owner_user} touch #{latest_release}/tmp/isItWorking.txt )
#     run cmd
#   end
# end

# task :mark_revision do
#   log = "#{shared_path}/versions"
#   cmd = <<-CMD
#     sudo -iu #{process_owner_user} touch #{log} &&
#     sudo -iu #{process_owner_user} chmod g+w -R  #{log} &&
#     sudo -iu #{process_owner_user} chgrp -R mongrel #{log} &&
#     echo "#{DateTime.now} #{latest_revision}<br />" >> #{log} &&
#     sudo -iu #{process_owner_user} ln -s #{log} #{current_release}/public/versions.html
#   CMD
#   run cmd.gsub(/\r?\n/, '').gsub(/\s+/, ' ')
# end
