def grader(score)
  # TODO: complete me
  if score < 0.6 || score > 1
    grade = "F"
  elsif score => 0.6
    grade = "D"
  elsif score => 0.7
    grade = "C"
   elsif score => 0.8
     grade = "B"
   elsif score => 0.9
     grade = "A"
   end
end

p grader