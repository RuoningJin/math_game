class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def show_lives
    "#{lives}/3"
  end
end

