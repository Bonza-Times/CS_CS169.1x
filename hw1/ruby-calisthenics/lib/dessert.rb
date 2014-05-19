class Dessert
  
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  attr_accessor :name
  attr_accessor :calories
  
  def healthy?
    if @calories < 200
      return true
    else
      return false
    end
  end
  
  def delicious?
    if @name
      return true
    end
  end
  
end

class JellyBean < Dessert
  def initialize(flavor)
    @calories = 5
    @flavor = flavor
    @name = flavor+" jelly bean"
  end

  attr_accessor :flavor

  def delicious?
    if @name == "licorice jelly bean"
      return false
    else
      return true
    end
  end
  
end
