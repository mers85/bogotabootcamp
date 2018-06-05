
require 'pry'
require_relative "shelter"

shelter_1 = Shelter.new("Animalejo")

continue = true

while continue
  puts "Wellcome to Animalejo:"
  puts "Introduce 1 to create an animals"
  puts "Introduce 2 to create a clients"
  puts "Introduce 3 to display all animals"
  puts "Introduce 4 to display all clients"
  puts "Introduce 5 to adopt an animal"
  puts "Introduce 6 to buy some toy for your animal"
  puts "Introduce 7 to quit"

  user_choice = gets.chomp.to_i

  if user_choice == 1
      puts "Introduce the name of de animal"
      name = gets.chomp
      puts "Introduce the species to which the animal belongs"
      specie = gets.chomp
      animal = Animal.new(name,specie)
      shelter_1.add_animal(animal)
      puts "The animal #{name}, specie:#{specie} was added"

  elsif user_choice == 2
      puts "Introduce the name of de client"
      name = gets.chomp.downcase
      puts "Introduce the age of the client"
      age = gets.chomp
      client = Client.new(name, age)
      shelter_1.add_client(client)
      puts "The client #{name}, age:#{age} was added"

  elsif user_choice == 3
      puts "All pets:"
      puts shelter_1.animals_information
  elsif user_choice == 4
      puts "All clients:"
      puts shelter_1.clients_information
  elsif user_choice == 5
      puts "Name of the client who is going to make the adoption"
      name = gets.chomp
      owner = shelter_1.find_client(name)
      if owner.nil?
        puts "Unregistered customer. Go to section 2 and register"
      else
        keep_adopting = 'yes'
        while keep_adopting == 'yes'
          puts "Choose name of the animal you want to adopt"
          shelter_1.animals_information
          name_animal_adopt = gets.chomp
          pets = shelter_1.find_animal(name_animal_adopt)
          if pets.nil?
            puts "Unregistered pet"
          else
            shelter_1.adopt(owner, pets)
          end
          puts "Do you want to adopt another pet yes or no?"
          keep_adopting = gets.chomp.downcase
        end
      end
  elsif user_choice == 6
    puts "Are you a customer, what's your name?. If you are not a customer, go to section 2?"
    name = gets.chomp.downcase
    customer = shelter_1.find_client(name)
    puts "What is the name of your pet?"
    name_pet = gets.chomp.downcase
    pet = customer.find_pets(name_pet)
    puts "choose the name of the toy of your preference"
    shelter_1.list_toys
    toy = gets.chomp.downcase
    customer.buy_toy(pet, toy)
  elsif user_choice == 7
      continue = false
  end
end
