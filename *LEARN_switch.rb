def get_planet_name(id)
  case id
    when 1 then "Mercury"
    when 2 then "Venus"
    when 3 then "Earth"
    when 4 then "Mars"
    when 5 then "Jupiter"
    when 6 then "Saturn"
    when 7 then "Uranus"  
    when 8 then "Neptune"
  end
end

p get_planet_name(5)