Inf = 1.0 / 0.0

def grade(i)
  $grade = i.to_i
   case $grade
   when 90..100
       puts "Grade: A"
     when 80..89
       puts "Grade: B"
     when 70..79
       puts "Grade: C"
     when 60..69
       puts "Grade: D"
     when 0..59
       puts "Grade: F"
     when 100..Inf
       puts "You must have gotten extra credit."
     when (Inf*-1)..-1
       puts "Wow. The teacher must really hate you."
    end
end


#grade(ARGV.first)
$student_grades = []

def create_students(num)
  i = 0
  #num_grade = rand(100)
  while i < num
    $student_grades.push(rand(100))
    #num_grade << :student_grades[]
    i += 1
  end
end

create_students(25)
puts "The students' grades are: #{$student_grades}"

def find_a
  $student_grades.each do |num|
    case num
    when 90..100
      puts "#{num} is an A."
    end
    end
end

find_a
