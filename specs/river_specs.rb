require("minitest/autorun")
require("minitest/reporters")

require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRiver < MiniTest::Test

  def setup()


    @fish1 = Fish.new("Bob")
    @fish2 = Fish.new("Billy")
    @fish3 = Fish.new("Craig")
    @fish4 = Fish.new("Emily")
    @fish5 = Fish.new("Beverly")

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5]

    @river = River.new("Clyde", @fish)

  end

  def test_river_has_name()
    assert_equal("Clyde", @river.name())
  end

  def test_fish_stocks()
    assert_equal(5, @river.fish_count())
  end




end
