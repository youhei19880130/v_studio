# frozen_string_literal: true
set :stage, :production
role :app, %w(root@160.16.111.233)
role :web, %w(root@160.16.111.233)
role :db, %w(root@160.16.111.233)

server '160.16.111.233',
       user: 'root',
       roles: %w(web app db),
       ssh_options: {
         auth_methods: %w(password),
         password: 'sagasu.space'
       }
