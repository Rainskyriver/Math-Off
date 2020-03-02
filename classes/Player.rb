
class Player < Object
  attr_accessor :life_count, :name
  def initialize(name)
    @name = name
    @life_count = 3
  end
end

