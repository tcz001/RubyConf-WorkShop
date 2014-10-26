require 'calc/token'

module Calc
  def self.scanners
    @scanners ||= [
        {category: :operation, pattern: /\A(\+|-|\*|\/)/},
        {category: :numeric, pattern: /\A(\d+(\.\d+)?|\.\d+)\b/}
    ]
  end

  def self.token_stacks
    @token_stacks ||= {
        operation: [],
        numeric: []
    }
  end

  def self.eval(string)
    nums, operations = tokenize(string)
    result = evaluate(nums, operations)
    result
  end

  def self.evaluate(nums, operations)
    result = nums.pop.value
    until operations.empty?
      result = operations.pop.call(result, nums.pop.value)
    end
    result
  end

  def self.tokenize(string)
    input = string.dup
    until input.empty?
      scanners.each { |scanner|
        token = scanner[:pattern].match(input)
        if token
          token_stacks[scanner[:category]] << Calc::Token.new(scanner[:category], token[0])
          input = input[token[0].length..-1]
        end
      }
    end
    token_stacks[:numeric].reverse!
    token_stacks[:operation].reverse!
    return token_stacks[:numeric], token_stacks[:operation]
  end
end