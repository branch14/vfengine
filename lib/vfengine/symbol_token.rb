# (c) 2008 Phil Hofmann <phil@versfabrik.de>

module Vfengine

  class SymbolToken

    attr_reader :key

    def initialize(key)
      @key = key
    end

    def to_s
      "<#{key}>"
    end

    def inspect
      "'<#{key}>'"
    end

  end

end
