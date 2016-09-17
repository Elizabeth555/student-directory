def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
  end

def print_header
  puts "The students of Villains Academy"
  puts "--------------------"
end

def print(students)

    students.each_with_index {|student ,index|
      if student[:name].length < 12
      puts "#{index +1}. #{student[:name]} (#{student[:cohort]} cohort)"
    else
      puts "Error: name too long"
    end
    }
end

def filter_letter(students)
  puts "Find Names begining with __"
  letter = gets.chomp
 filter = students.select {|student| student[:name][0] == letter}
 print(filter)
 end


def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
