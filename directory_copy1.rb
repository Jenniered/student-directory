def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit enter twice"
#create an empty array
students = []
#get the first name
name = gets.rstrip
#while the name is not empty, repeat this code
  while !name.empty? do
#add the student hash to the array
    puts "Which cohort?"
    cohort = gets.chomp.to_sym
    puts "Country of birth?"
    country = gets.chomp.to_sym
    if country.empty?
      country = "unknown"
    end
    students << {name: name, cohort: cohort, country: country}
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
    puts "Now we have #{students.count} students"
    end
#get another name from the user
    name = gets.rstrip
  end
#return the array of students
students
end

def print_header(names)
  if names.count >= 1
  puts "The students of Villains Academy"
  puts "-------------"
  else
  puts "No students entered"
  end
end

def print_names(students)
  students.each do |student| 
    puts "#{student[:name]}, #{student[:country]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  if names.count > 0
  puts "Overall, we have #{names.count} great students"
  else
  end
end

#nothing happens until we call the methods
students = input_students
print_header(students)
print_names(students)
print_footer(students)

