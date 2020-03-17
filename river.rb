class River

  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_count()
    return @fish.size
  end

  def remove_fish()
    @fish.delete_at(0)
  end

end
