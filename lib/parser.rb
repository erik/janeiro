require "rubygems"
require "treetop"

require "parser/nodes"
require "parser/parser"

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
end


