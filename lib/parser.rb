require "rubygems"
require "treetop"
load "parser/parser.rb"

module Treetop::Runtime
  class SyntaxNode
    attr_accessor :value
  end
end

module Janeiro

  def self.parse (input)
    @parser ||= JaneiroParser.new
    @parser.parse input
  end

  class String < Treetop::Runtime::SyntaxNode
    def initialize *args
      super
      @value = text_value[1..-2].gsub /\\\"/, "\"" 
    end
  end

  class Number < Treetop::Runtime::SyntaxNode
    def initialize *args
      super
      puts text_value
      @value = text_value.send(text_value =~ /[\.e]/ ? :to_f : :to_i)
    end
  end

  class Program < Treetop::Runtime::SyntaxNode
  end

  class Message < Treetop::Runtime::SyntaxNode
  end
  
  class Expression < Treetop::Runtime::SyntaxNode
  end

  class Program < Treetop::Runtime::SyntaxNode
  end

  class Argument < Treetop::Runtime::SyntaxNode
  end

  class ArgumentList < Treetop::Runtime::SyntaxNode
  end

end

