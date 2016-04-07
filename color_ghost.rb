class Ghost
  def initialize
    @colors = ["white","yellow","purple","red"]
  end
  def color
    @colors.sample
  end
end

ghost = Ghost.new
puts ghost.color