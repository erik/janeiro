require "parser"

require 'janeiro/core'
require 'janeiro/scope'
require 'janeiro/repl'

module Janeiro

  def self.evaluate(scope, exp)
    if exp.is_a? Program
      return self.evaluate(scope, exp.elements[0])
    elsif exp.is_a?(Expression)
      return self.evaluate(scope, exp.elements[1])
    else
      
      puts exp.inspect
      case exp
        
      when Number
        return exp.value
        
      when Message
        return exp.eval(scope)
      end
      
      exp.value
    end
  end

  def self.atomic? (value)
    value.is_a?(String) || value.is_a?(Number)
  end
end
