require './poker_hands'
require 'test/unit'

class TestPokerHands < Test::Unit::TestCase

  def test_initializing_a_standard_deck_has_size_of_52
    deck = Deck.new
    answer = deck.count
    expected = 52
    
    assert_equal expected, answer
  end

  def test_dealing_5_cards_from_a_deck_returns_five_cards
    deck = Deck.new
    cards = deck.deal_cards 5

    assert_equal cards.size, 5

    cards.each do |card|
      assert_equal Card, card.class
    end

    assert_equal 47, deck.count
  end
end