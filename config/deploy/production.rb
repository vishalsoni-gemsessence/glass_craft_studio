# Define the rails env
set :rails_env, 'production'

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/home/deploy/apps/glassxpert'

# Default tmp_dir directory is /var/www/tmp
set :tmp_dir, "/home/deploy/apps/tmp"

# Set the rvm ruby version
set :rvm_ruby_version, 'ruby-2.5.0@glassxpert'

# Set the bundler to skip the listed env from Gemfile
set :bundle_without, %w{development test}.join(' ')

# To restart passenger using `touch tmp/restart.txt`
set :passenger_restart_with_touch, true

# Bitbucket Branch
set :branch, 'master' # e.g. 'master'


append :linked_files, "tmp/restart.txt"


server '178.79.137.34', user: 'deploy', roles: %w{app db web}

# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
set :ssh_options, {
  #  keys: %w(/home/rlisowski/.ssh/id_rsa),
  forward_agent: false,
  auth_methods: %w(password),
  password: "Abcde!2345"  
}
