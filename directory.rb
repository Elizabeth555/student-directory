def interactive_menu
  students = []
  loop do
    puts "1 Input the students"
    puts "2 Show the students"
    puts "9 Exit"

    selection = gets.chomp

    case selection
    when "1"
       input_students(students)
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I don't know what you want"
    end

  end

end






def input_students(students)
  puts "Please enter the names of the students and cohort, seperated by a comma"
  puts "To finish, just hit return three times"


  name_cohort = gets.chomp


while !name.empty? do
  puts 'cohort'
  cohort = gets.chomp
  puts "Enter height"
  height = gets.chomp
  puts "Enter hobby"
  hobby = gets.chomp
  students << {name: name, cohort: cohort, height: height, hobby: hobby}
  puts "Now we have #{students.count} students"
  puts "Enter name"
  name = gets.chomp
end
  students
end

def print_header
  title =  "The students of Villains Academy"
  header ="--------------------"
  puts title
  puts header
end

def print(students)
    students.each_with_index {|student ,index|
        puts "#{index +1} #{student[:name]} (#{student[:cohort]} cohort)"

      }

    end

def filter_letter(students)
  puts "Find Names begining with __"
  letter = gets.chomp
 filter = students.select {|student| student[:name][0] == letter}
 print(filter)
 end


def print_footer(students)
  if students.count > 1
  puts "Overall, we have #{students.count} great students".
  else students.count == 1
  puts "Overall, we have #{students.count} great student".
  end

end
end

interactive_menu
