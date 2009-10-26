# (c) 2008 Phil Hofmann <phil@versfabrik.de>

require 'rubygems'
# Gem::manage_gems

require 'rake/gempackagetask'

spec = Gem::Specification.new do |s|

  ## REQUIRED
  s.name = "versfabrik_engine"
  s.version = "0.1.5"
  s.summary = "the evaluator engine for versfabrik metagrammars"

  ## REQUIRED AND SET BY DEFAULT
  # s.platform= Gem::Platform::RUBY
  # s.date= Time.now
  # s.require_paths = ['lib']

  ## OPTIONAL
  s.description = s.summary
  s.files = FileList['lib/**/*.rb', 'bin/*', '[A-Z]*', 'test/**/*'].to_a
  s.authors = ['Phil Hofmann']
  s.email = "phil@versfabrik.de"
  s.homepage= "http://versfabrik.de/"
  # s.rubyforge_project = s.name
  s.extra_rdoc_files= ['README', 'LICENSE', 'CHANGELOG']
  # s.executables = ['']
  # s.default_executable= s.name

  ## OPTIONAL AND SET BY DEFAULT
  # s.autorequire = nil
  # s.bindir= 'bin'
  # s.has_rdoc= false
  # s.rdoc_options= []
  # s.required_ruby_version = '> 0.0.0'
  # s.requirements<< ""
  # s.test_files= []
  # s.dependencies= []
  # s.add_dependency('log4r', '>= 1.0.5')
  # s.extensions= []

  ## SET AUTOMATICALLY
  # rubygems_version, specification_version

end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_tar = true
end

task :gem => "pkg/#{spec.name}-#{spec.version}.gem" do
  puts "generated latest version"
end

task :upload do
  sh %{scp pkg/#{spec.name}-#{spec.version}.gem deity:public_html/branch14/gems}
end

desc 'invoke ragel to generate the parser'
task :ragel do
  sh %{ragel -R lib/versfabrik/metagrammar_parser.rl | rlgen-ruby}
end

task :install => :gem do
  sh %{sudo gem install pkg/#{spec.name}-#{spec.version}.gem}
end

task :uninstall do
  sh %{sudo gem uninstall #{spec.name}}
end
