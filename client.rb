class Client
  attr_accessor :name, :age, :gender, :num_pets, :animals
  def initialize(name, age, gender, num_kids, animals)
    @name = name
    @age = age
    @gender = gender
    @animals = animals
    @num_kids = num_kids
    @num_pets = animals.count
  end

  def remove_animal_by_index(index)
    binding.pry
    @animals.delete_at(index)
  end

  def to_s
    "Client: #{@name}, Gender: #{@gender}, Number of Pets: #{@num_pets}"
  end
end