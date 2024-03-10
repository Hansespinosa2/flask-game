class Flask
  attr_accessor :liquids, :max_liquids
  def initialize
    @liquids = []
    @max_liquids = 4
  end

  def add_liquid(liquid)
    @liquids.push(liquid)
  end

  def pop_liquid
    @liquids.pop
  end

  def display_flask(i=0)
    p "Flask #{i}: #{@liquids}"
  end




end
