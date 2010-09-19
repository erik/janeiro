require "rubygems"
require "treetop"

require "parser/nodes.rb"
require "parser/parser.rb"

module Treetop::Runtime
  class SyntaxNode
    attr_accessor :value
    def eval
    end
  end
end

module Janeiro
  def self.parse (input)
    @parser ||= JaneiroParser.new
    @parser.parse input
  end

  def self.evaluate(scope, exp)
    case exp

    when Number
      return exp.value
    end
    exp
  end    
end


