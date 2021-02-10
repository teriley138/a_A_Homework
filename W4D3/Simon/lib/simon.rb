class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize 
    @sequence_length = 1
    @game_over = false
    @seq = []
    
  end

  def play
    # self.take_turn
    until @game_over == true
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    # self.require_sequence
    self.show_sequence
    
    if @game_over == false
      self.round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.75
      system("clear")
      sleep 0.25
    end
  end

  def require_sequence
    puts "Repeat the sequence by entering the first letter of each color on a new line."
    @seq.each do |color|
      user_color = gets.chomp
      if color[0] != user_color
        @game_over = true
        break
      end
    end
    sleep 0.25
  end

  def add_random_color
    @seq << Simon::COLORS.sample
  end

  def round_success_message
    p "You Got It!!"
  end

  def game_over_message
    p "You Lost"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end

game = Simon.new
game.play
