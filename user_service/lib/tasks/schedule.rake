namespace :schedule do

  task :HelloJob => :environment do
    HelloJob.perform_now
  end

end