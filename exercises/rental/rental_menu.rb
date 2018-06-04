require_relative "building"


bulding_1 = Building.new("Edificio Macarena","calle 92", "carrera 7",48,5)

continue = true

while continue
    puts "Choose an option:"
    puts "Introduce 1 to view building details"
    puts "Introduce 2 to add an apartment to the building"
    puts "Introduce 3 to add a tenant of apartment"
    puts "Introduce 4 to list the apartment directory for the building"
    puts "Introduce 5 to leave the apartment"
    puts "Introduce 6 to quit"

    user_selection = gets.chomp

    if user_selection == "1"
        puts bulding_1.display_details
    elsif user_selection == "2"
        puts "Introduce the number of the aparment"
        name = gets.chomp
        puts "Introduce the price of the aparment"
        price = gets.chomp
        puts "Introduce the square meter of the aparment"
        sqft = gets.chomp
        puts "Introduce the number of beds in the aparment"
        num_beds = gets.chomp.to_i
        puts "Introduce the number of baths in the aparment"
        num_baths = gets.chomp
        aparment = Aparment.new(name, price,sqft,num_beds, num_baths)
        bulding_1.add_apartment(aparment)
        puts "aparment #{aparment.name} succesly added"
    elsif user_selection == "3"
        puts "In which apartment you want to live. Introduce the number of apartment"
        aparment_name = gets.chomp
        chosen_aparment = bulding_1.find_aparment(aparment_name)
        if chosen_aparment == nil
            puts "this aparment does not exist in this building"
        else
            puts "Introduce the name of the tenant"
            name = gets.chomp
            puts "Introduce the age of the tenant"
            age = gets.chomp
            puts "Introduce the gender of the tenant"
            gender = gets.chomp
            tenant = Tenant.new(name, age, gender)
            chosen_aparment.add_tenant(tenant)

        end

    elsif user_selection == "4"
        bulding_1.list_aparments
    elsif user_selection == "5"
        puts "Introduce the name of the tenant who leave aparment"
        tenant_name = gets.chomp
        puts "Which apartment you want to leave. Introduce the number of apartment"
        aparment_name = gets.chomp
        chosen_aparment = bulding_1.find_aparment(aparment_name)
        chosen_tenant= chosen_aparment.find_tenant(tenant_name)
        if chosen_tenant.nil?
          puts "This tenant isn't in this apartment"
        else
          chosen_aparment.remove_tenant(chosen_tenant)
        end

    elsif user_selection == "6"
        continue = false
    end


end
