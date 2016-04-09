class Image

  def initialize(array)
    @array = array
  end

  def output_image
    @array.each do |row|
      puts row.join
    end
  end

  def find_ones
    ones = []
    @array.each_with_index do |row, row_number|
      row.each_with_index do |element, index|
        if element == 1
          ones << [row_number, index]
        end
      end
    end
    ones
  end

  def blur!
    ones = find_ones 
    @array.each_with_index do |row, row_number| 
      row.each_with_index do |element, index| 
        ones.each do |one_row_number, one_index| 
          if row_number == one_row_number && index == one_index
            @array[row_number][index - 1] = 1 unless index == 0
            @array[row_number][index + 1] = 1 unless (index + 1) >= row.length  
            @array[row_number - 1][index] = 1 unless row_number == 0
            @array[row_number + 1][index] = 1 unless (row_number + 1) >= @array.length
          end
        end
      end
    end
  end

  def blur_distance(distance) 
    distance.times do 
      blur!           
    end
  end

end

image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 1, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0]
])
p 'original'
image.output_image
p 'blur'
image.blur_distance(3)
image.output_image
