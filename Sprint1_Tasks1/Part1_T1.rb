$hour_degree = 30
$minutes_degree = 0.5

def angle(hour, minute)
  return (hour * $hour_degree + minute * $minutes_degree) - (minute * 6)
end

puts angle(3, 15)