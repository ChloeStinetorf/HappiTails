
require_relative 'shelter'
require_relative 'client'
require_relative 'animal'


$p1 = Animal.new('Fido',13,'cat','f',)
$p2 = Animal.new('Brandy',13,'cat','f',)
$p3 = Animal.new('Garfield',13,'cat','f',)

$p4 = Animal.new('Spooky',13,'cat','f',)
$p5 = Animal.new('Bandit',13,'cat','f',)
$p6 = Animal.new('Stripes',13,'cat','f',)

$p7 = Animal.new('Larry',13,'cat','f',)
$p8 = Animal.new('Moe',13,'cat','f',)
$p9 = Animal.new('Curly',13,'cat','f',)

$p10 = Animal.new('Booboo',13,'cat','f',)
$p11= Animal.new('Smootchy',13,'cat','f',)
$p12= Animal.new('George',13,'cat','f',)

$animals1 = [p1,p2,p3]
$animals2 = [p4,p5,p6]
$animals3 = [p7,p8,p9]
$animals4 = [p10,p11,p12]

$c1 = Client.new('Shafali', 100,'f', 0, animals1)
$c2 = Client.new('Chloe', 95, 'f', 5, animals2)
$c3 = Client.new('Brian',123,'m', 13, animals3)


$clients = [c1,c2,c3]

