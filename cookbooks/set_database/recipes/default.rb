#
# Cookbook Name:: set_database
# Recipe:: default
#

if ['solo', 'app', 'app_master'].include? node[:instance_role]
  execute "update database.yml" do
    command "sed -i -e 's/database:.*/database:   BLU/' /data/blu_frontend/shared/config/database.yml"
  end
end

ey_cloud_report "recipe_name" do 
  message "Changing database name for blu_frontend from blu_frontend to BLU" 
end 
Chef::Log.info "Changing database name for blu_frontend from blu_frontend to BLU"