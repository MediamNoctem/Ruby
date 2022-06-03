class Model_car
  attr_accessor :name

  def initialize (name)
    @name = name
  end
  def find_name(name)
    self.each {|m|
      if m.name == name
      then return name
      end
    }
    nil
  end
end
