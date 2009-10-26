# (c) 2008 Phil Hofmann <phil@versfabrik.de>

module Vfengine

  class PoemEvaluator

    attr_reader :data

    def initialize
      @data = Hash.new { |hash, key| hash[key] = [] }
    end

    def new_key(key)
      @data[@key] << @option if @option && !@option.empty?
      @key = key
      @option = []
    end

    def <<(token)
      @option << token
    end

    def new_option
      @data[@key] << @option
      @option = []
    end

    def finish
      @data[@key] << @option if @option && !@option.empty?
      @data['n'] << [TextToken.new("\n")]
    end

    def evaluate(token=SymbolToken.new('START'), seed=nil)
      Kernel.srand(seed) if seed
      if !@data[token.key].empty?
        tokens = @data[token.key].rand unless @data[token.key].empty?
        poem = []
        tokens.each do |token|
          poem.concat(evaluate(token)) if token.is_a?(SymbolToken)
          poem << token if token.is_a?(TextToken)
        end
      else
        poem = [token]
      end
      poem
    end

  end

end
