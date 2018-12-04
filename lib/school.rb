class School

  def initialize(name)
    @name = name
    @roster = { }
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    self.roster[grade] ||= [ ]
    self.roster[grade] << name
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    hash_new = {}
    @roster.each do |grade, names|
      hash_new[grade] = names.sort
    end
    hash_new
  end

end
