class Aparment


  def initialize(name, price, sqft, num_beds, num_baths)
    @name = name
    @price = price
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = []
  end

  def name
    @name
  end

  def add_tenant(tenant)
    if @num_beds == 0
      puts "Sorry, there are no more rooms. Choose other apartment"
    else
      @renters.push(tenant)
      @num_beds -= 1
      puts "Tenant added correctly"
    end
  end

  def remove_tenant(tenant)
    @renters.delete(tenant)
    @num_beds += 1
    puts "Deleted tenant  correctly"
  end

  def num_beds
    @num_beds
  end

  def vacio?
    @renters.empty?
  end

  def full?
    @num_beds == 0
  end

  def display_details_aparment
    puts "Aparment: #{name} is #{@sqft} and has #{num_beds.to_s} beds and  #{@num_baths} baths. It costs #{@price} a month"
  end

   def list_renters
     @renters.each do |renter|
       puts "#{renter.name} lives in apartment #{name}."
     end
   end

   def find_tenant(name)
     @renters.find { |renter| renter.name == name }
   end

end
