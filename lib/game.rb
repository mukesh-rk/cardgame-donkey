class Game
  deck = ["S-1", "S-2", "S-3", "S-4", "S-5", "S-6", "S-7", "S-8", "S-9", "S-10", "S-11", "S-12", "S-13", "D-1", "D-2", "D-3", "D-4", "D-5", "D-6", "D-7", "D-8", "D-9", "D-10", "D-11", "D-12", "D-13", "C-1", "C-2", "C-3", "C-4", "C-5", "C-6", "C-7", "C-8", "C-9", "C-10", "C-11", "C-12", "C-13", "H-1", "H-2", "H-3", "H-4", "H-5", "H-6", "H-7", "H-8", "H-9", "H-10", "H-11", "H-12", "H-13"]
  def initialize
    @player = []
    @current_turn = Player.new
  end
  def add_player(client_id)
    @player << Player.new(client_id)
  end

  def deal
    nop = @player.count
    cards_for_each_player = 52/nop
    @player.each do |p|
      p.cards = deck.sample(cards_for_each_player)
      deck = deck - p.cards
      @current_turn = p if p.cards.include?("S-1")
    end

  end


end

class Player
  attr_accessor :id, :cards
  def initailize(client_id = nil)
    @id = client_id
    @cards = []
  end

  def publishcards
  end

end
