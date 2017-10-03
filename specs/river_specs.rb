require("minitest/autorun")
require("minitest/rg")
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestRiver < Minitest::Test

  def setup
    @Carp = Fish.new("Carp")
    @Salmon = Fish.new("Salmon")
    @Amazon = River.new("Amazon", [@Carp, @Salmon])
    @Yogi = Bear.new("Yogi", [])
  end

  def test_take_fish__fish_not_in_river()
    @Yogi.take_fish(@Amazon, @Carp)
    assert_equal([@Salmon], @Amazon.fish)
  end

  def test_fish_count()
    result = @Amazon.fish_count
    assert_equal(2, result)
  end

  def test_fish_count__yogi_took_a_fish()
    @Yogi.take_fish(@Amazon, @Carp)
    result = @Amazon.fish_count
    assert_equal(1, result)
  end

end
