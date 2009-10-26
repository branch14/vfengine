# (c) 2008 Phil Hofmann <phil@versfabrik.de>

module Vfengine

  class TextToken

    attr_reader :text

    def initialize(text)
      @text = text
    end

    def to_s
      text
    end

    def inspect
      text=="\n" ? "'\\n'" : "'#{to_s}'"
    end

  end

end
