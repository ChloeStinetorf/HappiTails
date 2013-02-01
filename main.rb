require 'pry'
require 'pry-debugger'

require_relative 'shelter'
require_relative 'client'
require_relative 'animal'
#require_relative 'data'

p1 = Animal.new('Fido',13,'cat','f',)
p2 = Animal.new('Brandy',13,'cat','f',)
p3 = Animal.new('Garfield',13,'cat','f',)

p4 = Animal.new('Spooky',13,'cat','f',)
p5 = Animal.new('Bandit',13,'cat','f',)
p6 = Animal.new('Stripes',13,'cat','f',)

p7 = Animal.new('Larry',13,'cat','f',)
p8 = Animal.new('Moe',13,'cat','f',)
p9 = Animal.new('Curly',13,'cat','f',)

p10 = Animal.new('Booboo',13,'cat','f',)
p11= Animal.new('Smootchy',13,'cat','f',)
p12= Animal.new('George',13,'cat','f',)

animals1 = [p1,p2,p3]
animals2 = [p4,p5,p6]
animals3 = [p7,p8,p9]
animals4 = [p10,p11,p12]

c1 = Client.new('Shafali', 100,'f', 0, animals1)
c2 = Client.new('Chloe', 95, 'f', 5, animals2)
c3 = Client.new('Brian',123,'m', 13, animals3)


clients = [c1,c2,c3]

shelter = Shelter.new("HappyTrails", clients, animals4)

choice = nil
while choice != 6
  system('clear')
  puts "Welcome to HappyTails Animal Shelter!"
  puts "What Would you Like to Do?"
  puts "(1) View Available Animals"
  puts "(2) View All Animals"
  puts "(3) View All Clients"
  puts "(4) Give Up Your Animal For Adoption"
  puts "(5) Adopt an Animal"
  puts "(6) Quit"
  choice = gets.to_i


  case choice
  ### View Available Animals
  when 1
    puts "\nHere are the animals available for adoption: "
    shelter.animals.each {|animal| puts animal}
    puts "Press Enter to Continue..."
    gets

  ### View All Animals
  when 2
    puts "\nAll Animals: "
    shelter.animals.each {|animal| puts animal}
    shelter.clients.each do |client|
      client.animals.each { |animal| puts animal}
    end
    puts "\n"
    puts "Press Enter to Continue..."
    gets
  ### View All Clients
  when 3
    ### views all clients
    puts "\nAll Clients: "
    shelter.clients.each {|client| puts client}
    puts "Press Enter to Continue..."
    gets
  ### Give Up Your Animal for Adoption
  when 4
    print "\nWhat is your name?"
    name = gets.chomp
    clientObj = shelter.find_client_by_name(name)
    clientObj.animals.count.times { |i| puts "(#{i}) #{clientObj.animals[i]}" }

    puts "\nWhich animal do you wish to give up? "
    index = gets.to_i
    new_animal = clientObj.animals[index]
    shelter.animals << clientObj.animals[index]
    clientObj.animals.reject! {|animal| animal == new_animal }

    puts "\nHere are your pets:"
    clientObj.animals.count.times { |i| puts "#{i}. #{clientObj.animals[i]}" }

    puts "Press Enter to Continue..."
    gets

  ### Adopt an Animal
  when 5
    print "\nWhat is your name?"
    name = gets.chomp
    clientObj = shelter.find_client_by_name(name)

    shelter.animals.count.times { |i| puts "#{i}. #{shelter.animals[i]}" }
    puts "Which animal do you want to adopt?"
    index = gets.to_i

    # add animal to client's animals array
    clientObj.animals << shelter.animals[index]

    ## remove animal from shelter
    shelter.animals.reject! {|animal| animal == shelter.animals[index]}
    puts "You have adopted a new animal."

    puts "Press Enter to Continue..."
    gets

  ### Quit
  when 6
    choice = 6
  else
    puts "Invalid Choice."
    puts "Press Enter to Coninue..."
    gets
  end
end

binding.pry