class Image

  def initialize(array)
    @array = array
  end

  def output_image
    @array.each do |row|
      puts row.join
    end
  end

  def blur
    @new_array = Marshal.load(Marshal.dump(@array))
    @array.each_with_index do |row, row_number| 
      row.each_with_index do |element, index| 
        if element == 1
          @new_array[row_number][index - 1] = 1 unless index == 0
          @new_array[row_number][index + 1] = 1 unless (index + 1) >= row.length  
          @new_array[row_number - 1][index] = 1 unless row_number == 0
          @new_array[row_number + 1][index] = 1 unless (row_number + 1) >= @array.length
        end
      end
    end
    Image.new(@new_array)
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0]
])
p image.output_image
blurred_image = image.blur.output_image
p blurred_image


