# Add your code here
class Dog
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all 
        @@all
    end
    
    def self.print_all
        puts @@all.map{ |dog| dog.name } #maps through all and accesses dog.name
    end

    def self.clear_all
        puts @@all.methods 
        @@all.clear
    end

    def save
        @@all << self
    end
end

max = Dog.new("Max")
milo = Dog.new("Milo")
sidney = Dog.new("Sidney")
jackie = Dog.new("Jackie")
puts Dog.print_all, Dog.all