require("minitest/autorun")
require("minitest/reporters")

require_relative("../bear.rb")
require_relative("../fish.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBear < MiniTest::Test

  def setup()
    @bear = Bear.new("Gary", "grizzly")
    @fish = Fish.new("Scott")
  end

  def test_bear_has_name()
    assert_equal("Gary", @bear.name)
  end

  def test_bear_has_type()
    assert_equal("grizzly", @bear.type)
  end

  def test_stomach_empty()
    assert_equal(0, @bear.how_full())
  end

  def test_eats_a_fish()
    @bear.eats_a_fish(@fish)
    assert_equal(1, @bear.how_full())
  end

  def test_roar()
    assert_equal("Rooooaaar!", @bear.roar())
  end


end
