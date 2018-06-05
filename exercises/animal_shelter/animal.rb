class Animal
  attr_reader :name
  attr_accessor :toys
  def initialize(name, specie)
    @name = name
    @specie = specie
    @toys = []
  end

  def display_information
    "Information; name: #{@name}, specie: #{@specie}, toys:#{toy_info}"
  end

  def toy_info
    return "0 toys" if @toys.empty?
    @toys.join(" ")
  end


end
