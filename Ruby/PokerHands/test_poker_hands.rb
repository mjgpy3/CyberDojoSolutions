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

  def test_classify_can_recognize_a_straight 
    hand = Hand.new

    (2..5).each do |value|
      hand.cards << Card.new(value.to_s, 'C')
    end
    hand.cards << Card.new("6", 'D')

    answer = classify hand
    expected = Hands::Straight

    assert_equal expected, answer
    hand
  end

  def test_classify_can_recognize_a_straight_flush
    hand = Hand.new

    (2..6).each do |value|
      hand.cards << Card.new(value.to_s, 'C')
    end

    answer = classify hand
    expected = Hands::StraightFlush

    assert_equal expected, answer
    hand
  end

  def test_classify_can_recognize_a_flush
    hand = Hand.new

    [4,5,2,2,8].each do |value|
      hand.cards << Card.new(value.to_s, 'C')
    end

    answer = classify hand
    expected = Hands::Flush

    assert_equal expected, answer
    hand
  end

  def test_classify_can_recognize_four_of_a_kind
    hand = Hand.new

    [4,4,4,4,5].each do |value|
      hand.cards << Card.new(value.to_s, 'C')
    end

    answer = classify hand
    expected = Hands::FourOfAKind

    assert_equal expected, answer
    hand
  end

  def test_classify_can_recognize_a_full_house
    hand = Hand.new

    [4,4,4,5,5].each do |value|
      hand.cards << Card.new(value.to_s, 'C')
    end

    answer = classify hand
    expected = Hands::FullHouse

    assert_equal expected, answer
    hand
  end

  def test_classify_can_recognize_a_high_card
    hand = Hand.new

    [2,4,5,6].each do |value|
      hand.cards << Card.new(value.to_s, 'C')
    end

    hand.cards << Card.new("7", 'D')

    answer = classify hand
    expected = Hands::HighCard

    assert_equal expected, answer
    hand
  end

  def test_classify_can_recognize_three_of_a_kind
    hand = Hand.new

    [2,4,5,5].each do |value|
      hand.cards << Card.new(value.to_s, 'C')
    end

    hand.cards << Card.new("5", 'D')

    answer = classify hand
    expected = Hands::ThreeOfAKind

    assert_equal expected, answer
    hand
  end

  def test_classify_can_recognize_two_pairs
    hand = Hand.new

    [2,2,5,5].each do |value|
      hand.cards << Card.new(value.to_s, 'C')
    end

    hand.cards << Card.new("7", 'D')

    answer = classify hand
    expected = Hands::TwoPairs

    assert_equal expected, answer
    hand
  end

  def test_classify_can_recognize_a_pair
    hand = Hand.new

    [2,2,3,5].each do |value|
      hand.cards << Card.new(value.to_s, 'C')
    end

    hand.cards << Card.new("7", 'D')

    answer = classify hand
    expected = Hands::Pair

    assert_equal expected, answer
    hand
  end
end
