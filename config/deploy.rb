# TODO change this to the corresponding app repo and info
set :application, "my_app_name"
set :repo_url, "git@example.com:me/my_repo.git"
set :deploy_to, '/home/app-folder'
set :rvm_type, :user
set :rvm_ruby_version, '2.3.3'
set :bundle_binstubs, -> { '/home/my-app/shared/bin' }
set :pty, true #to run sudo commands
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml', 'config/local_env.yml', 'config/puma.rb')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'bin')
