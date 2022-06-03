current_path = File.dirname(__FILE__)
require "#{current_path}/car.rb"
require "#{current_path}/brand.rb"
require "#{current_path}/brand_list.rb"
require "#{current_path}/model_car.rb"
require "#{current_path}/model_car_list.rb"
require 'yaml'
require 'yaml/store'

class Car_list < Car

  def initialize (*car_list)
    @car_list = car_list
  end

  def add_car car
    @car_list.append(car)
  end

  def change_car car
    @car_list[@choose_car] = car
  end

  def choose_car
    @choose_car
  end

  def choose_car= choose_car
    if choose_car != -1
      @choose_car = choose_car
    else
      if @car_list.empty?
        raise("Невозможно выбрать запись! Список пуст.")
      else
        @choose_car = 0
      end
    end
  end

  def get_car
    @car_list[@choose_car]
  end

  def delete_car
    @car_list[@choose_car] = nil
    @car_list.compact!
    self.choose_car = @choose_car - 1
  end

  def size
    size = 0
    for i in @car_list
      size += 1
    end
    size
  end

  def each
    for i in @car_list
      yield i
    end
  end

  def sort
    pred = @car_list[0]
    for i in (1..@car_list.size - 1)
      for j in (1..@car_list.size - 1)
        if pred.name > @car_list[j].name
          @car_list[j - 1], @car_list[j] = @car_list[j], @car_list[j - 1]
        end
        pred = @car_list[j]
      end
    end
  end

  def [] value
    @car_list[value]
  end

  def to_s
    s = ""
    @car_list.length.times do |index|
      s+= "##{index + 1} #{@car_list[index]}"
    end
    s+="\n"
  end

  def Car_list.read_from_yaml file_name
    store = YAML::Store.new file_name
    car = ""
    File.open(file_name + ".yaml", "r") do |f|
      while line = f.gets
        car += line
      end
      store.load(car)
    end
  end

  def Car_list.write_to_yaml file_name, car_list
    output = File.new(file_name + ".yaml", "w")
    YAML.dump(car_list, output)
    output.close
  end
end

# m = Model_car_list.read_from_yaml("model_car_list")
# b = Brand_list.read_from_yaml("brand_list")
# c1 = Car.new(b.find("Alfa Romeo"), m.find("Alfa Romeo 145"), 2010, 4, 6)
# c2 = Car.new(b.find("Alfa Romeo"), m.find("Alfa Romeo 146"), 2011, 4, 6.9)
# c3 = Car.new(b.find("BMW"), m.find("BMW M Roadster"), 2015, 3, 5)
# c4 = Car.new(b.find("Mazda"), m.find("Mazda 121"), 2020, 12, 6.3)
# c5 = Car.new(b.find("Mazda"), m.find("Mazda Capella"), 2021, 12, 6.5)
# c = Car_list.new
# c.add_car(c1)
# c.add_car(c2)
# c.add_car(c3)
# c.add_car(c4)
# c.add_car(c5)
# Car_list.write_to_yaml("car_list", c)

# puts c
# Car_list.read_from_yaml("car_list")
