class Simple_calculator

  def sum
   resp = @first + @second
   puts "la respuesta de la suma es #{resp}"
  end

  def resta
    resp = @first - @second
    puts "la respuesta de la resta es #{resp}"
  end

  def mult
   resp = @first * @second
   puts "la respuesta de la multiplicacion es #{resp}"
  end

  def div
   resp = @first / @second
   puts "la respuesta de la division es #{resp}"
  end

  def modulo
    resp = @first % @second
    puts "la respuesta del modulo es #{resp}"
  end

  def exponent
    resp = @first ** @second
    puts "la respuesta del exponente es #{resp}"

  end

  def respuesta(first, second)
    @first = first
    @second = second
  end

end

calc = Simple_calculator.new

puts "coloca el numero al que se le va a realizar una operacion simple"
n = gets.chomp.to_f
puts "coloca el siguiente numero "
m = gets.chomp.to_f

calc.respuesta(n, m)

puts calc.sum
puts calc.resta
puts calc.mult
puts calc.div
puts calc.modulo
puts calc.exponent
