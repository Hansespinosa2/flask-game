

class Game

  attr_accessor :flasks
  def initialize
    @flasks = []
    @possible_colors = ['red', 'blue','green', 'yellow', 'purple', 'orange','white','black','brown','gray','pink']
  end

  def won?
    @flasks.all? { |flask| flask.uniq.length == 1 }
  end

  def create_game(n_colors=nil,seed=nil)
    if n_colors.nil?
      n_colors = rand(4..@possible_colors.length)
    end

    if seed != nil? then
      srand(seed)
    end

    @possible_colors = @possible_colors.sample(n_colors)
    colors = (@possible_colors *4).shuffle
    n_colors > 6 ? x = 2 : x = 1

    (n_colors + x).times do
      flask = Flask.new
      flask.liquids.concat(colors.pop(4))
      @flasks << flask
    end

  end

    def pour_flask(flask, flask2)
      flask2.add_liquid(flask.pop_liquid)
    end

    def check_color(flask, flask2)
      (flask.liquids.last == flask2.liquids.last or flask2.liquids.empty?) ? true : false
    end

    def check_space(flask,flask2)
      flask2.liquids.length < flask2.max_liquids ? true : false
    end

    def check_empty(flask)
      flask.liquids.empty? ? true : false
    end

    def attempt_pour(flask, flask2)
      while self.check_color(flask,flask2) && self.check_space(flask,flask2) && !self.check_empty(flask)
        pour_flask(flask,flask2)
      end
    end


    def display_game
      puts "\n"
      @flasks.each_with_index do |flask, i|
        flask.display_flask(i)
      end
      puts "\n"
    end

    def play(n_colors=nil,seed=nil)
      self.create_game(n_colors,seed)
      display_game

      input = gets.chomp
      until self.won? or input=='restart'
        p 'Input pouring attempt in format 1->2'



      end
    end




end
