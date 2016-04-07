def no_odds( values )
  evens = []
  values.each do |i|
    if i % 2 == 0
      evens << i
    end
  end
  return evens
end

mixed = [1,2,3,4,5]
p no_odds(mixed)