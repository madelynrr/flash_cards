require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/round'
require './lib/turn'
require './lib/card'

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    # @turn = Turn.new("", @card_1)
    @deck = Deck.new(@cards)
    @round = Round.new(@deck)
  end

  def test_initialize
    assert_instance_of Round, @round
  end

  def test_turns
    assert_equal [], @round.turns
  end

  def test_current_card
    assert_equal @card_1, @deck.cards.first
  end

  def test_take_turn_returns_true_if_correct
    new_turn = @round.take_turn("Juneau")
    assert_instance_of Turn, new_turn
    assert_equal true, new_turn.correct?
  end

  def test_take_turn_returns_false_if_incorrect
    new_turn = @round.take_turn("Anchorage")
    assert_instance_of Turn, new_turn
    assert_equal false, new_turn.correct?
  end

  def test_number_correct
    skip
    # tells number of turns that are correct (.length? on turns? part of turns that is correct, two arrays?)
  end

  def test_number_correct_by_category()
    skip
    # tells number of Turns correct, by category
    # look at arrays built elsewhere, and Deck class's cards_in_category method
  end

  def test_total_percent_correct
    skip
    # number correct divided by total, multiply by 100
    # format returned message
  end

  def test_percent_correct_by_category
    skip
    # number correct by categoy, multiply by 100
    # format returned message
  end



end
