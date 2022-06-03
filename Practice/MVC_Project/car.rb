class Car
  attr_accessor :brand, :model, :year_assembly, :engine_type, :fuel_consumption
  def initialize (brand, model, year_assembly, engine_type, fuel_consumption)
    @brand = brand
    @model = model
    @year_assembly = year_assembly
    @engine_type = engine_type
    @fuel_consumption = fuel_consumption
  end

  def to_s
    "Марка: #{@brand}\nМодель: #{@model}\nГод сборки:#{@year_assembly}\nТип двигателя: #{@engine_type}\nРасход топлива: #{@fuel_consumption}"
  end

  # def number= number
  #   if number =~ /\d{,5}/
  #     @number = number
  #   else
  #     raise "Некорректное число дней!"
  #   end
  # end
end

