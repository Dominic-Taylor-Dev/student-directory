#############
##METHODS####
#############

def print_header
  puts "\nThe students of Villains Academy"
  puts "--------------------------------------------------------------------"
end

def print_students(students)
    i = 1
    @students.each do |student|
        puts "#{i}. #{student[:name]} (#{student[:cohort]} cohort)"
    i +=1
    end
end

def print_footer(students)
  print "\nOverall, we have " + @students.count.to_s + " great students\n\n"
end

def input_students(students)
  # get the first (full) name
  puts "What is the student's name?"
  name = gets.chomp.split.map(&:capitalize).join(' ')
  # get the cohort
  puts "What is the student's cohort?"
  cohort = gets.chomp.split.map(&:capitalize).join(' ')
  
  # while the name is not empty, repeat this code
  while !name.empty? && !cohort.empty? do
    # add the student hash to the array
    @students << { name: name, cohort: cohort}
    puts "Now we have #{@students.count} students. Do you wish to enter any more students? (y/n)?"
    # know whether to continue. If 'n', then set name and cohort to zero and break out of loop
    input = gets.chomp
    if input == "y"
      # get another name and cohort from the user
      puts "What is the student's name?"
      name = gets.chomp.split.map(&:capitalize).join(' ')
      puts "What is the student's cohort?"
      cohort = gets.chomp.split.map(&:capitalize).join(' ')
    elsif input == "n"
        name = ""
        cohort = ""
    else
        puts "Sorry. Invalid input. Exiting input function. Your previous student entries have been kept"
        name = ""
        cohort = ""
    end
  end
  return @students
end

def save_students(students)
    # open the file for writing
    file = File.open("students.csv", "w")
    # iterate over the array of students
    @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv_line = student_data.join(",")
      file.puts csv_line
    end
    file.close
end

def load_students
    file = File.open("students.csv", "r")
    file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
      @students << {name: name, cohort: cohort.to_sym}
    end
    file.close
end

def interactive_menu
    @students = []
    loop do
      # 1. print the menu and ask the user what to do
      puts "\nPick from the following options (enter a number and then hit return):\n\n"
      puts "1. Input students"
      puts "2. Show the students"
      puts "3. Save current students list"
      puts "4. Load students list"
      puts "9. Exit" # 9 because we'll be adding more items
      puts "--------------------------------------------------------------------"
      # 2. read the input and save it into a variable
      selection = gets.chomp
      # 3. do what the user has asked
      case selection
      when "1"
        @students = input_students(@students)
      when "2"
        print_header
        print_students(@students)
        print_footer(@students)
      when "3"
        save_students(@students)
      when "4"
        load_students
      when "9"
        exit # this will cause the program to terminate
      else
        puts "I don't know what you meant, try again"
      end
    end
end

#############
## LOOP######
#############

  interactive_menu