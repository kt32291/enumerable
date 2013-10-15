# Loading seed data

puts "\nLoading data for the previous TSL students.. "

load 'seeds.rb'


# CHALLENGE 1

# Using the each method and the STUDENTS array. Find Vince
# and return the following output:

# name: Vince Cabansag
# twitter: @vcabansag
# github: vcabansag
# blog: http://vincentcabansag.com
# email: vince@starterleague.com
puts "CHALLENGE 1______________________________"

STUDENTS.each do |name|
  if name["last_name"] == "Cabansag"
    puts "name: #{name["first_name"]} #{name["last_name"]}"
    puts "twitter: #{name["twitter"]}"
    puts "github: #{name["github"]}"
    puts "blog: #{name["blog"]}"
    puts "email: #{name["email"]}"
  end
end

# CHALLENGE 2

# Gather all of the Twitter handles into an array and show them on separate lines

puts "CHALLENGE 2_______________________________"

STUDENTS.each do |name|
  if name["twitter"] != nil
    puts name["twitter"]
  end
end

# CHALLENGE 3

# Update your script so that you only show values of a person if they're present
# We don't want to see "blog: " or "github: "

puts "CHALLENGE 3_______________________________"

STUDENTS.each do |name|
    puts "name: #{name["first_name"]} #{name["last_name"]}"
  if name["twitter"] != nil
    puts "twitter: #{name["twitter"]}"
  end
  if name["github"] != nil
    puts "github: #{name["github"]}"
  end
  if name["blog"] != nil
    puts "blog: #{name["blog"]}"
  end
  if name["email"] != nil
    puts "email: #{name["email"]}"
  end
  end



# CHALLENGE 4

# Refactor your code to use the .keys method to access the key value pairs
# We don't need to explicity type every key. Play around with the .keys method.

puts "CHALLENGE 4________________________________________"

STUDENTS.each do |name|
  name.keys.each do |key|
    if name[key] != nil
      print key + ": "
      puts name[key]
    end
  end
end

# BONUS CHALLENGE 5

# Create a method to display the details of a student
# Create a method to find a student by first name
# Take into account that the data set may continue people with the same names

# Remember, methods can look like this

# def show_student_details

# end

# or this

# def show_student_details(student)

# end

puts "CHALLENGE 5_____________________________________"

puts "Enter first name:"

def show_student_details

first = gets.chomp

STUDENTS.each do |name|
  if name["first_name"] == first
    puts "name: #{name["first_name"]} #{name["last_name"]}"
    if name["twitter"] != nil
      puts "twitter: #{name["twitter"]}"
    end
    if name["github"] != nil
      puts "github: #{name["github"]}"
    end
    if name["blog"] != nil
      puts "blog: #{name["blog"]}"
    end
    if name["email"] != nil
      puts "email: #{name["email"]}"
    end
    puts ""
  end
end

end

show_student_details






