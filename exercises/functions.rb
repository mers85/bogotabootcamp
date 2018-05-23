def drinking_age?(age)
  if age < 21
    puts "No puede beber Alcohol"
  else
    puts "Beba con moderación"
  end
  age > 21
end

drinking_age?(20)




def ac_action(current_temperature, ac_functional, desired_temperature)
  if ac_functional == true && current_temperature > desired_temperature
    puts "Turn on the A/C Please"
  elsif ac_functional == false && current_temperature > desired_temperature
    puts "Fix the A/C now!  It's hot!"
  elsif ac_functional == false && current_temperature < desired_temperature
    puts "Fix the A/C whenever you have the chance...  It's cool..."
  else
    puts "it's ok"
  end
end
ac_action(10,true,25)




def is_prime?(n)
  for div in 2..(n - 1)
    if n % div == 0
       return false
    end
  end
  return true
end

def is_prime_v2?(n)
  if n <= 1
    return false
  end
  for div in 2..(n - 1)
    if n % div == 0
       return false
    end
  end
  return true
end

is_prime?(20)
