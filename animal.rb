

class Animal
  attr_accessor :name, :age, :breed, :gender, :owner
  def initialize(name, age, breed, gender)
    @name = name
    @age = age
    @breed = breed
    @gender = gender
    @owner = owner
  end

  def to_s
    "#{name}"
  end


end