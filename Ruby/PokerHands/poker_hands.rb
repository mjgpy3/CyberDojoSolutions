require 'set'

module Hands
  HighCard = 1
  Pair = 2
  TwoPairs = 3
  ThreeOfAKind = 4
  Straight = 5
  Flush = 6
  FullHouse = 7
  FourOfAKind = 8
  StraightFlush = 9
end

def classify hand
  values = hand.cards.collect {|card| card.value}
  suits = hand.cards.collect {|card| card.suit}

  number_of_faces = Set.new(suits).size
  number_of_values = Set.new(values).size

  has_flush_property = number_of_faces == 1
  has_straight_property = values.sort == (values.min..values.max).to_a

  if has_flush_property && has_straight_property
    return Hands::StraightFlush
  elsif values.count(values[0]) == 4 || values.count(values[1]) == 4
    return Hands::FourOfAKind
  elsif number_of_values == 2
    return Hands::FullHouse
  elsif has_flush_property
    return Hands::Flush
  elsif has_straight_property
    return Hands::Straight
  end

  # If nothing else works...
  Hands::HighCard

end

class Hand
  def initialize
    @cards = []
  end

  def set_hand cards
    @cards = cards
  end

  def cards
    @cards
  end

end

class Deck
  def initialize
    @cards = []
    build_standard_deck
  end

  def build_standard_deck
    (0..12).each do |v|
      (0..3).each do |s|
        @cards << Card.new(v, s)
      end
    end
  end

  def deal_cards n
    to_deal = []

    (1..n).each do 
      to_deal << @cards.pop
    end

    to_deal
  end

  def shuffle
    @cards = @cards.shuffle
  end

  def count
    @cards.count
  end
end

class Card
  @@num_to_suit = {0 => "C", 1 => "D", 2 => "H", 3 => "S"}
  @@num_to_value = {0 => "2", 1 => "3", 2 => "4", 3 => "5", 4 => "6",
                    5 => "7", 6 => "8", 7 => "9", 8 => "T", 9 => "J",
                    10 => "Q", 11 => "K", 12 => "A"}
  @@suit_to_num = {"C" => 0, "D" => 1, "H" => 2, "S" => 3}
  @@value_to_num = {"2" => 0, "3" => 1, "4" => 2, "5" => 3, "6" => 4,
                    "7" => 5, "8" => 6, "9" => 7, "T" => 8, "J" => 9,
                    "Q" => 10, "K" => 11, "A" => 12}

  def initialize value, suit
    @value = @@value_to_num[value]
    @suit = @@suit_to_num[suit]
  end

  def value
    @value
  end

  def suit
    @suit
  end
end
