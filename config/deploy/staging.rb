# TODO please refer to deployment section on cratebind's playbook
# before continuing

server '<insert_ip_here>', user: 'ubuntu', roles: %w{web app db sidekiq}, ssh_options: {keys: ['~/.ssh/cratebind.pem']}
set :branch, :master

namespace :deploy do
  desc 'Stop sidekiq workers'
  task :stop_sidekiq do
    on roles(:sidekiq) do
      within current_path do
        #rescue in case it's not currently running like on initial deploy

        execute( :sudo,  "initctl stop <worker_process_here>" ) rescue true
        # execute( :bundle,  "exec rpush stop -e staging" ) rescue true
      end
    end
  end

  desc 'Start sidekiq workers'
  task :start_sidekiq do
    on roles(:sidekiq) do
      within current_path do
        #rescue in case it's not currently running like on initial deploy
        execute( :sudo,  "initctl start <worker_process_here>" )
        # execute( :bundle, "exec rpush start -e staging" )
      end
    end
  end


  before :updating,  :stop_sidekiq
  after  :published, :start_sidekiq
end
