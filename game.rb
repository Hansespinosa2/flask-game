require_relative 'colors.rb'

class Game
  def initialize
    @flasks = []
  end

  def add_flask(flask)
    @flasks << flask
  end

  def create_game(n_colors=nil)
    if n_colors.nil?
      n_colors = rand(4..colors.length)
    end

    n_colors + 1.times do
      colors = (possible_colors *4).shuffle
      flask = Flask.new



  end

end
