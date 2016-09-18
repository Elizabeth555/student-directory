@students = []


def add_student_data(name,cohort,height,hobby)
  @students << {name: name, cohort: cohort, height: height, hobby: hobby}
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort], student[:height], student[:hobby]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
  puts "Saved!"
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
    add_student_data(name, cohort, height, hobby = line.chomp.split(","))

end
file.close
end

def try_load_students
  filename= ARGV.first
  return if filename.nil?
  if File.exists? (filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist"
    exit
  end
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
    puts "1 Input the students"
    puts "2 Show the students"
    puts "3 Save students"
    puts "4 Load Students"
    puts "9 Exit"
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
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
  puts "Please enter the name, cohort, height, hobby seperated by a comma"
  puts "To finish, enter '!' "

  data = STDIN.gets.chomp

  until data == "!" do
      add_student_data(data.split(","))
      end

      puts "add data"

    #puts 'Cohort?'
    #cohort = STDIN.gets.chomp
    #puts "Enter height"
    #height = STDIN.gets.chomp
    #puts "Enter hobby"
    #hobby = STDIN.gets.chomp
    #add_student_data
    #puts "Now we have #{@students.count} students"
    #puts "Enter name"
    #name = STDIN.gets.chomp
  #end
  @students
end

def print_header
  title =  "The students of Villains Academy".centre(20)
  header ="--------------------".centre(20)
  puts title
  puts header
end

def print_students_list
    @students.each_with_index {|student ,index|
        puts "#{index +1} #{student[:name]} (#{student[:cohort]} cohort)"
      }
end


def print_footer
  puts "Overall, we have #{@students.count} great students"
end



try_load_students
interactive_menu
