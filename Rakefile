require 'cucumber/rake/task'
require 'reek/rake/task'
require 'simplabs/excellent/rake'
require 'flay_task'

Cucumber::Rake::Task.new(:features) do [task]
puts 'this is where the cucumber stuff happens'
task.cucumber_opts = '--format html --out report.html'
end

Reek::Rake::Task.new do |t|
  #source_files = '/app'
  #source_files = '/features'
end

Simplabs::Excellent::Rake::ExcellentTask.new(:excellent) do |t|
  t.html  = 'doc/excellent.html' # optional, if you don't specify html, output will be written to $stdout
  t.paths = %w(app lib)
end

