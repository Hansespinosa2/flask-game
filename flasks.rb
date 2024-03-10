class Flask
  attr_accessor :liquids, :max_liquids
  def initialize
    @liquids = []
    @max_liquids = 4
  end

  def add_liquid(liquid)
    @liquids.concat(liquid)
  end

  def remove_liquid
    @liquids.pop
  end




end
