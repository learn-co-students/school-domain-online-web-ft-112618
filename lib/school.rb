class School
  
  attr_accessor :roster
  
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
    self.roster[grade]
  end
  
  def sort
    
  sorted_roster = {}
  self.roster.each do |grade , name|
    self.roster[grade] = name.sort
    end
  end
  
end