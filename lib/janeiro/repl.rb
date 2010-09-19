require 'rubygems'
require 'treetop'

require 'parser'
require 'janeiro'
require 'janeiro/core'
require 'janeiro/scope'

module Janeiro
  class REPL
    PROMPT = "Io> "

    def initialize
      Scope.init
      @scope = Scope.new($scope)
    end

    def run
      loop do
        print PROMPT
        line = gets.chomp
        puts "Evaluating: \"#{line}\""
        evaluated = Janeiro.evaluate(@scope, Janeiro.parse(line))
        puts "==> #{evaluated.nil? ? "nil" : evaluated }"
      end
    end        
  end
end
