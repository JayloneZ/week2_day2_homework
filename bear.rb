class Bear

attr_accessor :name, :food
def initialize(name, food)
  @name = name
  @food = food
end

def take_fish(river, input_fish)
  self.food.push(input_fish)
  river.fish.delete(input_fish)
  river.fish.compact!
end

def roar(string)
  string.upcase
end

def food_count()
  self.food.count
end

end
