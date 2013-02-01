class Shelter
  attr_accessor :name, :clients, :animals, :num_pets
  def initialize(name, clients, animals)
      @name = name
      @animals = animals
      @clients = clients
  end

  def show_all_client_animals
    @clients.each do |client|
      client.animals.each do |animal|
         print "#{animal}, "
      end
      print "\n"
    end
  end

  def show_all_shelter_animals
  end

  def show_all_clients
    @clients.each do |client|
      print "#{client.name}, "
    end
  end

  def find_client_by_name(name)
    @clients.each do |client|
      return client if client.name == name
    end
  end




  def to_s
      "Shelter has #{clients.count} clients and #{animals.count} animals."
  end
end

