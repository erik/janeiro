require 'rubygems'
require 'treetop'

require 'parser'
require 'janeiro/scope'

module Janeiro
  class REPL
    PROMPT = "Io> "

    def initialize
      @scope = Scope.new
    end

    def run
      loop do
        print PROMPT
        line = gets.chomp
        puts "Evaluating: \"#{line}\""
        evaluated = Janeiro.evaluate(@scope, Janeiro.parse(line)) \
          .eval(@scope)
        puts "==> #{evaluated.last}"
      end
    end        
  end
end
