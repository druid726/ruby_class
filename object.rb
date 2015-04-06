class Pets
  attr_accessor :name, :owner

end

  class Dog < Pets
    def bark
      return "woof"
    end
  end

  class Cat < Pets
    def meow
      return "meow"
    end
  end

my_dog = Dog.new
my_dog.name= "Sadie"
my_dog.owner= "Patti"
dogname = my_dog.name
ownername = my_dog.owner
my_cat = Cat.new
my_cat.name= "Whiskers"
my_cat.owner= "Patti"
catname = my_cat.name
ownername = my_cat.owner

puts "My name is #{ownername} and my dog is called #{dogname}."
puts "My name is #{ownername} and my cat is called #{catname}."

puts my_dog.inspect
puts my_cat.inspect