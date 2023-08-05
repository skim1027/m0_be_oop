# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    def initialize(name)
        @name = name
        @color = "silver"      
    end

    def say(string) 
        @string = "*~* #{string} *~*"
    end
end

my_unicorn = Unicorn.new("YK")
p my_unicorn

my_unicorn.say("Hello")
p my_unicorn

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    def initialize(name, pet = "bat" )
        @name = name
        @pet = pet
        @thirsty = true
    end
    def drink
        @thirsty = false
    end
end

v1 = Vampire.new("Carl")

p v1
v1.drink
p v1


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
    end

    def eat(number)
        @is_hungry = false if number >= 4
    end
end

d1 = Dragon.new("Zulu", "Ming", "Red")
p d1
d1.eat(5)
p d1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.


class Hobbit
    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
    end

    def celebrate_birthday(age, is_adult = false, is_old = false, has_ring = false)
        @age = age + 1
        @is_adult = is_adult
        @is_adult = true if age >= 33
        @is_old = false
        @is_old = true if age >= 101
        @has_ring = has_ring
        @has_ring = true if @name == "Frodo"
    end
end

h1 = Hobbit.new("Frodo", "Brave", 35)
p h1

h1.celebrate_birthday(102)
p h1