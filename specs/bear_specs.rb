require("minitest/autorun")
require("minitest/reporters")

require_relative("../bear.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBear < MiniTest::Test

  def setup()
    @bear = Bear.new("Gary", "grizzly")
  end

  def test_bear_has_name()
    assert_equal("Gary", @bear.name)
  end

  def test_bear_has_type()
    assert_equal("grizzly", @bear.type)
  end


end
