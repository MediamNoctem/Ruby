require 'yaml'
current_path = File.dirname(__FILE__)

require_relative "#{current_path}/brand.rb"
class Brand_list
  def initialize (brand_list = [])
    @brand_list = brand_list
  end

  def add_brand (brand)
    @brand_list.append(brand)
  end

  def Brand_list.write_to_yaml (array, file_name)
    output = File.new(file_name + ".yaml", "w")
    YAML.dump(array, output)
    output.close
  end

  def Brand_list.read_from_yaml(file_name)
    store = YAML::Store.new file_name
    brand = ""
    File.open(file_name + ".yaml", "r") do |f|
      while line = f.gets
        brand += line
      end
      store.load(brand)
    end
  end

  def to_s
    s = ""
    @brand_list.length.times do |index|
      s+= "№#{index + 1}\tМарка: #{@brand_list[index].name}\n"
    end
    s+="\n"
  end
  def find(name)
    @brand_list.each {|b|
      if b.name == name
      then return name
      end
    }
    nil
  end
end

b1 = Brand.new("Alfa Romeo")
b2 = Brand.new("BMW")
b3 = Brand.new("Mazda")
b = Brand_list.new
b.add_brand(b1)
b.add_brand(b2)
b.add_brand(b3)
Brand_list.write_to_yaml(b, 'brand_list')
