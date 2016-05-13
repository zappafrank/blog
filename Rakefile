require 'cucumber/rake/task'
require 'reek/rake/task'
require 'simplabs/excellent/rake'
require 'flay_task'

Cucumber::Rake::Task.new(:features) do [task]
puts 'this is where the cucumber stuff happens'
task.cucumber_opts = '--format html --out report.html'
end

Reek::Rake::Task.new do |t|
  t.source_files = Dir.glob('{app,features}/**/*.rb')
  t.reek_opts = '--sort-by smelliness -s'
end

Simplabs::Excellent::Rake::ExcellentTask.new(:excellent) do |t|
  t.html  = 'doc/excellent.html' # optional, if you don't specify html, output will be written to $stdout
  t.paths = %w(app features)
end

FlayTask.new do |t|
  t.dirs = %w(app features)
end