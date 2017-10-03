require("minitest/autorun")
require("minitest/rg")
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestBear < Minitest::Test

  def setup
    @Carp = Fish.new("Carp")
    @Salmon = Fish.new("Salmon")
    @Amazon = River.new("Amazon", [@Carp, @Salmon])
    @Yogi = Bear.new("Yogi", [])
  end


  def test_take_fish__fish_in_bear()
    @Yogi.take_fish(@Amazon, @Carp)
    assert_equal([@Carp], @Yogi.food)
  end

  def test_roar()
    result = @Yogi.roar("I want more fish")
    assert_equal("I WANT MORE FISH", result)
  end

  def test_food_count__empty_stomach()
    result = @Yogi.food_count()
    assert_equal(0, result)
  end

  def test_food_count__1fish_in_stomach()
    @Yogi.take_fish(@Amazon, @Carp)
    result = @Yogi.food_count()
    assert_equal(1, result)
  end

end
