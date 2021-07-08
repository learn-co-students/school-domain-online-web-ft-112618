# code here!
require 'pry'
class School

  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def roster
    @roster
  end
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student|
      @roster[grade] = @roster[grade].sort{|studenta, studentb|
        studenta <=> studentb}
      #binding.pry
    end
  end
end
