

class Game
  def initialize
    @flasks = []
    @possible_colors = ['red', 'blue','green', 'yellow', 'purple', 'orange']
  end

  def add_flask(flask)
    @flasks << flask
  end

  def create_game(n_colors=nil)
    if n_colors.nil?
      n_colors = rand(4..@possible_colors.length)
      @possible_colors = @possible_colors.sample(n_colors)
    end

    colors = (@possible_colors *4).shuffle

    (n_colors + 1).times do
      flask = Flask.new
      flask.add_liquid(colors.pop(4))
      print(colors)
      @flasks << flask
    end



  end

end
