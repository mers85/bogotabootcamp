class Client
  attr_accessor :pets, :name
  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end


  def display_information
    "Information name: #{@name}, age: #{@age}, pets:#{pet_info}"
  end

  def pet_info
    return "0 pets" if @pets.empty?
    @pets.map {|pet| pet.name}.join(", ")
  end

  def find_pets(name)
    @pets.find { |pet| pet.name == name}
  end

  def buy_toy(pet, toy)
    pet.toys << toy
  end

end
