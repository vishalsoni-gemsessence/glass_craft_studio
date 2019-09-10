# Define the rails env
set :rails_env, 'staging'

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, '/var/www/apps/glassxpert'

# Default tmp_dir directory is /var/www/tmp
set :tmp_dir, "/var/www/apps/tmp"

# Set the rvm ruby version
set :rvm_ruby_version, 'ruby-2.5.0@GlassXpert-Shop --create'

# Set the bundler to skip the listed env from Gemfile
set :bundle_without, %w{development test}.join(' ')

set :branch, 'staging'

append :linked_files, "lib/staging_mail_interceptor.rb"

server '173.255.248.242', user: 'deploy', roles: %w{app db web}


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
   auth_methods: %w(password)
 }

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    # invoke 'unicorn:reload'
    invoke 'unicorn:stop'
    invoke 'unicorn:reload'
  end
end
