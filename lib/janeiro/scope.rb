class SlotNotDefinedException < NameError; end;

module Janeiro
  class Scope

    def initialize(parent=nil)
      @parent = parent
      @bindings = {}
    end

    def resolve(name)
      if @bindings.has_key? name
        @bindings[name]
      else
        if @parent
          @parent.resolve(name)
        else
          raise SlotNotDefinedException, "Slot #{name} undefined"
        end
      end      
    end
    alias [] resolve

    def add(name, value)
      @bindings[name] = value
    end
    alias []= add

    def slots
      @bindings
    end

    def has_key? (key)
      @bindings.has_key? key
    end

    def eval(string)
      tree = Janeiro::parse(string)
      raise SyntaxError, "could not parse #{string}" unless tree
      tree.eval(self)
    end
  end
end
