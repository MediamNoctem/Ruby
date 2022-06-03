require 'yaml'
current_path = File.dirname(__FILE__)
require_relative "#{current_path}/model_car.rb"

class Model_car_list
  def initialize (model_car_list = [])
    @model_car_list = model_car_list
  end

  def add_model_car (model_car)
    @model_car_list.append(model_car)
  end

  def Model_car_list.write_to_yaml (array, file_name)
    output = File.new(file_name + ".yaml", "w")
    YAML.dump(array, output)
    output.close
  end

  def Model_car_list.read_from_yaml(file_name)
    store = YAML::Store.new file_name
    model_car = ""
    File.open(file_name + ".yaml", "r") do |f|
      while line = f.gets
        model_car += line
      end
      store.load(model_car)
    end
  end

  def to_s
    s = ""
    @model_car_list.length.times do |index|
      s+= "№#{index + 1}\tМодель: #{@model_car_list[index].name}\n"
    end
    s+="\n"
  end
  def find(name)
    @model_car_list.each {|m|
      if m.name == name
      then return name
      end
    }
    nil
  end
end

m1 = Model_car.new("Alfa Romeo 145")
m2 = Model_car.new("Alfa Romeo 146")
m3 = Model_car.new("BMW Gran Turismo")
m4 = Model_car.new("BMW M Roadster")
m5 = Model_car.new("BMW i3")
m6 = Model_car.new("Mazda 121")
m7 = Model_car.new("Mazda 3")
m8 = Model_car.new("Mazda Capella")
m = Model_car_list.new
m.add_model_car(m1)
m.add_model_car(m2)
m.add_model_car(m3)
m.add_model_car(m4)
m.add_model_car(m5)
m.add_model_car(m6)
m.add_model_car(m7)
m.add_model_car(m8)
Model_car_list.write_to_yaml(m, 'model_car_list')
