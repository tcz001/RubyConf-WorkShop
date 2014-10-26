module Calc
  class Operation
    attr_accessor :type

    def initialize(type)
      @type = type.to_sym
    end

    def call(left, right)
      if @type == :-
        result = left - right
        result > 0 ? result : 0
      else
        left.send(@type, right)
      end
    end
  end
end

