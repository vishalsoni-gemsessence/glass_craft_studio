set :rails_env, 'production'
set :deploy_to, '/home/deploy/apps/glassxpert'
set :tmp_dir, "/home/deploy/apps/tmp"
set :rvm_ruby_version, 'ruby-2.5.0@glassxpert'
set :bundle_without, %w(development test).join(' ')
set :passenger_restart_with_touch, true
set :branch, 'master'
append :linked_files, "tmp/restart.txt"
server '178.79.137.34', user: 'deploy', roles: %w{app db web}

set :ssh_options, {
  #  keys: %w(/home/rlisowski/.ssh/id_rsa),
  forward_agent: false,
  auth_methods: %w(password),
  password: "Abcde!2345"  
}
