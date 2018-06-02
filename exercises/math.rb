# Building Ruby Familiarity

# Go into pry and type each line (typing builds familiarity)
# Before you hit enter on each line, predict and write down what will be printed and what will be returned and see if you're right.
# Ingrese a PRY y escriba cada línea (escribiendo la familiaridad de las construcciones)
# Antes de presionar Enter en cada línea, prediga y escriba lo que se va a imprimir y lo que se devolverá y vea si tiene razón.

first_ans = 7 / 2

puts first_ans

print first_ans

first_ans = 7 / 2.to_f

first_ans = 7.to_f / 2

first_ans = 7 / 2.0

first_ans = 7.0 / 2

first_ans = first_ans.round * 4



def get_character(full_string, index)
    return full_string[index]
end

message_string = "oicdlcwhejkeenoemrstuo"

character_1 = get_character(message_string, 4)

character_2 = get_character(message_string, 7)

character_3 = get_character(message_string, 2)

message_array = [character_1, character_2]


message_array.push(character_2)

message_array.pop()

message_array.push(character_3)


message_array

puts message_array

print message_array



value_float_1 = Math.sin(Math::PI / 2)

value_float_2 = Math.cos(Math::PI)



value_float_3 = (value_float_1 + value_float_2)

value_integer_1 = (value_float_1 + value_float_2).to_i



value_float_1 = value_float_1 * 4

value_float_2 *= 5

value_float_2 = value_float_2.abs

value_integer_1 += 8

value_float_4 = value_integer_1 * 3

value_float_3 -= 1



number_array = [value_float_1, value_float_2, value_float_3, value_float_4]

number_array.push(first_ans)

number_array.unshift(value_integer_1)

number_array.push(value_integer_1)

number_array.unshift( Math.sqrt(36) )

number_array.delete_at(5)



number_array.push( [19, 21, 6, 3, 1] )

number_array.flatten!


number_array.each { |current_index| puts get_character(message_string, current_index) }
