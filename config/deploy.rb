# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "job_post"
set :repo_url, "git@github.com:g2ooola/job_post.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/deployer/rails_application"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, 'config/database.yml', 'config/master.key'

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'vendor/bundle', '.bundle', 'public/uploads'
# linked_dirs '.bundle'  is needed for capistrano/bundler

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

# set :ssh_options, {
#   keys: %w(/Users/gsx/.ssh/id_rsa),
#   forward_agent: true,
#   # auth_methods: %w(password)
# }

# for rvm
set :rvm_ruby_version, '2.5.1'      # Defaults to: 'default'
set :rvm_custom_path, '/usr/local/rvm'  # only needed if not detected

