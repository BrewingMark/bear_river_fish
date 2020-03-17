class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def how_full()
    @stomach.length
  end

  def eats_a_fish(fish)
    @stomach.push(fish)
  end

  def roar()
    return "Rooooaaar!"
  end


end
