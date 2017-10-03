require("minitest/autorun")
require("minitest/rg")
require_relative('../bear.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class TestRiver < Minitest::Test

  def setup
    @Amazon = River.new("Amazon", [@Carp, @Salmon])
    @Carp = Fish.new("Carp")
    @Salmon = Fish.new("Salmon")
    @Yogi = Bear.new("Yogi", [])
  end

end
