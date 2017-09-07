lock '3.9.0'

set :application, 'v_studio'
set :repo_url, 'git@github.com:Vintom/studio-sagasu.git'
set :deploy_to, '/home/deploy/staging'
set :pty, true
set :scm, :git
set :rbenv_ruby, '2.3.1'
set :rbenv_type, :system

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
end
