module Janeiro

  class Program < Treetop::Runtime::SyntaxNode
    def eval(scope)
      eval_expressions
      @expressions.collect { |exp| exp.eval }
    end

    def eval_expressions
      @expressions ||= elements.find_all { |elem| 
        elem.eval
      }
    end
  end

  class Expression < Treetop::Runtime::SyntaxNode
    def initialize *args
      super
    end

    def eval
      elements[1].eval
    end
  end

  class Message < Treetop::Runtime::SyntaxNode
    def initialize *args
      super
    end

    def eval
      elements[1].eval
    end
  end
  
  class String < Treetop::Runtime::SyntaxNode
    def initialize *args
      super
      @value = text_value[1..-2].gsub /\\\"/, "\"" 
    end

    def eval
      @value
    end
  end

  class Number < Treetop::Runtime::SyntaxNode
    def initialize *args
      super
      @value = text_value.send(text_value =~ /[\.e]/ ? :to_f : :to_i)
    end
    
    def eval
      @value
    end
  end

  class Argument < Treetop::Runtime::SyntaxNode
  end

  class ArgumentList < Treetop::Runtime::SyntaxNode
  end

end
