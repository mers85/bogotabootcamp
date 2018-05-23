require 'pry'

def lines
  {
    red: ["Calle 62", "Calle 42", "Carrera 19b", "Calle 18", "Calle 17",
      "Calle 16", "Calle 15", "Boyaca", "Calle 10", "Calle 7"],
    blue: ["Calle 63", "Calle 45", "Calle 26", "Centro Historico", "Hospitales",
      "Santander", "Estacion NQS", "Rosario", "Avenida 68", "Boyaca", "Kennedy",
      "Paleneque", "Villablanca"],
    yellow: ["Calle 26", "Av. NQS", "Carrera 14", "Carrera 15", "Carrera 19b",
      "Carrera 21", "Carrera 24","Carrera 26", "Portal El Dorado"]
  }
end

puts "Welcome to the Transmilenio"

def stops (line)
  line.each do |lines|
    puts lines
  end
end

def stops_counter (line, get_on, get_off)
  stops_count = (line.index(get_on) - line.index(get_off)).abs
end

def choosing_line(line, get_on, get_off)
  lines.find{|key, value| value.include?(get_off)}.first
end

def intersection(start_line, stop_line)
  (start_line & lines[stop_line]).first
end

#puts stops(line[:red])
#puts stops_counter(lines[:red], "Calle 62", "Carrera 15")
#puts choosing_line(lines[:red], "Calle 62", "Calle 26")
#puts intersection(lines[:red], choosing_line(lines[:red], "Calle 62", "Calle 26"))

start_line = lines[:red]
get_on = "Calle 62"
get_off = "Carrera 15"

stop_line = choosing_line(start_line, get_on, get_off)

distance = if stop_line == start_line
    stops_counter(start_line, get_on, get_off)
else
    transfer_stop = intersection(start_line, stop_line)
    stops_counter(start_line, get_on, transfer_stop) + stops_counter(lines[stop_line], transfer_stop, get_off)
end

puts distance

binding.pry
