require 'janeiro/scope'

def func(args = 0, &body)
  lambda { |*args| body.call(args) }
end

def define(name, func)
  $scope[name] = func
end

module Janeiro
  class Scope
    def self.init
      # global scope
      $scope ||= Scope.new
      
      define("true", func { || true })
      define("false", func { || false })
      
    end
  end
end
