# --- Release 0 ---
def focus_today
  focus1 = "Gym"
  focus2 = "Painting"
  focus3 = "Cleaning the House"
  yield(focus1, focus2, focus3)
end
focus_today { |focus1, focus2, focus3| puts "Good Morning! What is our focus today? #{focus1} or #{focus2} or #{focus3}?" }
# --- Release 1 ---
days_of_week = [
  'monday',
  'tuesday',
  'wednesday',
  'thursday',
  'friday'
]
days_of_week.each do |days|
  puts "The days of the week are #{days}"
end
p days_of_week
days_of_week.map do |days|
  if days == "tuesday"
    days_of_week.delete('tuesday')
  end
end
p days_of_week
# --- Release 2 ---
bugs = {
  'ant' => 'one',
  'termite' => 'two',
  'grasshopper' => 'three',
  'hers' => 'four',
  'his' => 'five'
}
bugs.each do |whatever, status|
  puts "These bugs are so disgusting #{whatever} and #{status}"
end
bugs.map do |whatever, status|
  if whatever == 'grasshopper'
    bugs[whatever] = 2
  end
end
  puts bugs
numbers = [
  1,
  2,
  3,
  4,
  5
]
numbers.delete_if {|number| number < 2 }
puts numbers
numbers = [
  1,
  2,
  3,
  4,
  5
]
numbers.keep_if {|number| number < 2 }
puts numbers
numbers = [
  101,
  2000,
  3303,
  402,
  531
]
puts numbers.bsearch {|number| number >= 100 }
numbers = [
  101,
  2000,
  3303,
  402,
  531
]
puts numbers.take_while {|number| number <= 3000 }
Add Comment Collapse
