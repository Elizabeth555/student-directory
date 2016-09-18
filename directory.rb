@students = []

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
    puts "1 Input the students"
    puts "2 Show the students"
    puts "9 Exit"
end

def process(selection)
  case selection
    when "1"
       input_students
    when "2"
      show_students
     when "9"
       exit
     else
       puts "I don't know what you want"
     end

   end

def show_students
      print_header
      print_students_list
      print_footer
end



def input_students
  puts "Please enter the names of the students and cohort, seperated by a comma"
  puts "To finish, just hit return three times"


  name = gets.chomp


while !name.empty? do
  puts 'Cohort?'
  cohort = gets.chomp
  puts "Enter height"
  height = gets.chomp
  puts "Enter hobby"
  hobby = gets.chomp
  @students << {name: name, cohort: cohort, height: height, hobby: hobby}
  puts "Now we have #{@students.count} students"
  puts "Enter name"
  name = gets.chomp
end
  @students
end

def print_header
  title =  "The students of Villains Academy"
  header ="--------------------"
  puts title
  puts header
end

def print_students_list
    @students.each_with_index {|student ,index|
        puts "#{index +1} #{student[:name]} (#{student[:cohort]} cohort)"
      }
end

def filter_letter
  puts "Find Names begining with __"
  letter = gets.chomp
 filter = @students.select {|student| student[:name][0] == letter}
 print(filter)
end
end

def print_footer
  puts "Overall, we have #{students.count} great students".
end



interactive_menu
