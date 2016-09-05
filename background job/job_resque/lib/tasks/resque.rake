require 'resque/tasks'
require 'resque/scheduler/tasks'
# task "resque:setup" do
#   ENV['QUEUE'] = '*'
# end

namespace :resque do
  task :setup do
    require 'resque'
    require 'resque-scheduler'
  end
end

# task :setup do
#   require 'resque'
# end

