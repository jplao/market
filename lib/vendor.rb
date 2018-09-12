require 'pry'
class Vendor
  attr_reader :name
  attr_accessor :inventory

  def initialize(name)
    @name = name
    @inventory = {}

  end

  def check_stock(item)
    if @inventory[item].nil?
      0
    else
      @inventory[item]
    end
  end

  def stock(item, quantity)
    if @inventory.include?(item)
      @inventory[item] += quantity
    end
  end
end
