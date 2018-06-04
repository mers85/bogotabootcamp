
require_relative "aparment"
require_relative "tenant"

class Building

  def initialize(name, calle, carrera,number,num_floors)
    @name = name
    @calle = calle
    @carrera = carrera
    @number = number
    @num_floors = num_floors
    @apartments = []
  end

  def display_details
    "Name: #{@name}, Calle: #{@calle}, Carrera: #{@carrera}, Number: #{@number}, Floors: #{@num_floors}"
  end

  def add_apartment(aparment)
    @apartments.push(aparment)
  end

  def find_aparment(name)
    @apartments.find { |apartment| apartment.name == name }
  end

  def list_aparments
     @apartments.each do |aparment|
       unless aparment.full?
         puts aparment.display_details_aparment
       end
       puts aparment.list_renters
    end
  end

end
