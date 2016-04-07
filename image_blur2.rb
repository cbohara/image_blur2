
# Build a class that allows us to build a new image with the data we specify. 
# Make it possible for the class to output the image to the screen. 

class Image

  def initialize(array)
    @array = array
  end

  def output_image
    # loop through the argument array to access each row
    @array.each do |row|
      # transform from array to string and display row
      puts row.join
    end
  end

######### I am having difficulty accessing the index values in the array ##########
  def find_one
    #l oop through the argument array to access each row
    @array.each do |row|
      # loop through each row to access each index
      row.each do |i|
        # print value
        puts i
      end
    end
  end
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])

image.find_one

