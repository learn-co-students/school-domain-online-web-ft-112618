require "pry"

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(s_name, grade)
    self.roster[grade] = [] unless self.roster[grade].kind_of?(Array)
    self.roster[grade] << s_name
  end

  def grade(g)
    self.roster[g]
  end

  def sort
    self.roster.each do |grade, s_array|
      s_array.sort!
    end
  end

end
