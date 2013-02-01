
require_relative 'shelter'
require_relative 'client'
require_relative 'animal'


c1 = Client.new('Shafali', 100,'f',animals1)
c2 = Client.new('Chloe', 95, 'f',animals2)
c3 = Client.new('Brian',123,'m',animals1)

p1 = Animal.new('Fido',13,'cat','f',)
p2 = Animal.new('Brandy',13,'cat','f',)
p3 = Animal.new('Garfield',13,'cat','f',)

p4 = Animal.new('Spooky',13,'cat','f',)
p5 = Animal.new('Bandit',13,'cat','f',)
p6 = Animal.new('Stripes',13,'cat','f',)

clients = {'Shafali'=>c1,'Chloe'=>c2,'Brian'=>c3}
animals = {'Fluffy'=>p1, 'Spot'=>p2, 'Rover'=>p3}
