class School
  #attr_accessor :name
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort()
    new_hash = {}
    @roster.each do |grade, names|
      new_hash[grade] = names.sort
  end
  
  new_hash
  
end
  
end