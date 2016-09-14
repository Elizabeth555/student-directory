student_count = 11

#first we print the list of students
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corelone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates",
]

def print_header
  puts "The students of Villains Academy"
  puts "--------------------"
end

def print(names)
  students.each do |student|
  puts student
  end
end

def print_footer(names)
  puts "Overall, we have #{students.count} great students"
end

print_header
print(students)
print_footer(students)
