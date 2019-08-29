class Alligator
    attr_reader :name
    attr_reader :age
  
    def initialize(name, age = 8)
      @name = name
      @age = age
    end
  
    def == other
      other.is_a?(Alligator) && other.name == name && other.age == age
    end
  end