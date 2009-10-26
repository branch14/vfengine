# (c) 2008 Phil Hofmann <phil@versfabrik.de>

class Array
  
  def rand
    self[Kernel.rand(self.size)]
  end

end
