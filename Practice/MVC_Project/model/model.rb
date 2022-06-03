require_relative '../car.rb'
require_relative '../car_list.rb'
require 'yaml'

class Model
  def initialize

  end

  def get_list_car
    @lst = Car_list.read_from_yaml "C:/Users/romAn/OneDrive/Documents/GitHub/Ruby/Practice/MVC_Project/car_list"
  end

  def delete_car(table_index)
    @lst.choose_car = table_index
    @lst.delete_car
  end

  def update_file
    Car_list.write_to_yaml("C:/Users/romAn/OneDrive/Documents/GitHub/Ruby/Practice/MVC_Project/car_list", @lst)
  end
end