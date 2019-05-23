require_relative "card"
require "byebug"
class Deck
  attr_reader :suits, :cards
  def initialize
    
    generate_deck
    shuffle
  end

  def generate_deck
    values = (2..14).to_a
    @cards = []
   
  
    Card.retrieve_suits.each do |suit|
      values.each do |value|
        @cards << Card.new(value,suit)
      end
    end
    @cards
  end

  def shuffle
    @cards.shuffle!
  end
end




