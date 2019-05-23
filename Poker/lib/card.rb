class Card
  attr_reader :value, :suit
  SUITS = ["Hearts", "Spades", "Diamonds", "Clubs"].freeze
 
  def self.retrieve_suits
    SUITS
  end

  def initialize(value, suit)
    @value = value 
    @suit = suit
  end

end