require 'pry'
class Vendor
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    if @inventory[item] == nil
      @inventory[item] = 0
    else
      @inventory[item]
    end
  end

  def stock(item, quantity)
    if @inventory[item] == nil
      @inventory[item] = 0
    end
    @inventory[item] += quantity
  end
end
