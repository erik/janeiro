require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

file 'lib/parser/parser.rb' => 'lib/parser/janeiro.treetop' do
  puts "Building grammar."
  system 'tt -o lib/parser/parser.rb lib/parser/janeiro.treetop'
end

task :build_grammar do
  puts "Building grammar."
  system 'tt -o lib/parser/parser.rb lib/parser/janeiro.treetop'
end

task :sloc do
  system 'sloccount .'
end

task :check do
  puts "FIXME: write tests"
end

task :default => 'lib/parser/parser.rb'
