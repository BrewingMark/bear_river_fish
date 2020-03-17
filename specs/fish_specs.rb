require("minitest/autorun")
require("minitest/reporters")

require_relative("../fish.rb")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestFish < Minitest::Test

  def setup()
    @fish = Fish.new("Sammy")
  end

  def test_fish_has_name()
    assert_equal("Sammy", @fish.name)
  end

end
