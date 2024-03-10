

class Game
  def initialize
    @flasks = []
    @possible_colors = ['red', 'blue','green', 'yellow', 'purple', 'orange','white','black','brown','gray','pink']
  end



  def create_game(n_colors=nil)
    if n_colors.nil?
      n_colors = rand(4..@possible_colors.length)
    end

    @possible_colors = @possible_colors.sample(n_colors)
    colors = (@possible_colors *4).shuffle
    n_colors > 6 ? x = 2 : x = 1

    (n_colors + x).times do
      flask = Flask.new
      flask.add_liquid(colors.pop(4))
      @flasks << flask
    end

  end

    def pour_flask(flask, flask2)
      flask2.add_liquid(flask.pop_liquid)
    end

    def check_color(flask, flask2)
      flask.last.color == flask2.last.color ? true : false
    end

    def check_space(flask,flask2)
      flask2.liquids.length < flask2.max_liquids ? true : false
    end

    def check_empty(flask)
      flask.liquids.empty? ? true : false
    end

    def attempt_pour(flask, flask2)
      while check_color(flask,flask2) && check_space(flask,flask2) && !check_empty(flask)
        pour_flask(flask,flask2)
      end
    end






end
