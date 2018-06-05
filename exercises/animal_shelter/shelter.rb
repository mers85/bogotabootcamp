require_relative "client"
require_relative "animal"

class Shelter
  attr_accessor :clients, :animals, :toys_store

  def initialize(name_shelter)
    @name_shelter = name_shelter
    @clients = []
    @animals = []
    @toys_store = ["Pelota", "Hueso de goma", "Hueso de cuero", "Bola de hilo", "Chuleta de goma"]
  end

  def clients_information
    @clients.each {|client| puts client.display_information}
  end

  def animals_information
    @animals.each {|animal| puts animal.display_information}
  end

  def add_animal(animal)
    @animals << animal
  end

  def add_client(client)
    @clients << client
  end

  def find_client(name)
    @clients.find { |client| client.name == name }
  end

  def find_animal(name)
    @animals.find { |animal| animal.name == name }
  end

  def adopt(owner, *pets)
    pets.each do |pet|
      @animals.delete(pet)
      owner.pets.push(pet)
    end
  end

  def list_toys
    puts @toys_store
  end



end
