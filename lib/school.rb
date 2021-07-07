# code here!
class School
attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student_name, grade)
  @roster[grade] ||= []
  @roster[grade] << student_name
end

def grade(student_grade)
  roster[student_grade]
end

def sort
  sorted = {}
  roster.each do |grade, students|
    sorted[grade] = students.sort
end
sorted
end 

end

#@roster[9] = []
#@roster[9] << "Homer Simpson"
#@roster[10] = []
#@roster[10] << "Jeff Baird"
#@roster[10] << "Avi Flombaum"
#@roster[7] = []
#@roster[7] << "Blake Johnson"
