class Market
  attr_reader :name,
              :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.inventory[item]
    end
  end

  def sorted_item_list
    market_inventory = []
    @vendors.each do |vendor|
      vendor_keys = vendor.inventory.keys
      vendor_keys.each do |key|
        if market_inventory.include?(key)
          market_inventory
        else
          market_inventory << key
        end
      end
    end
    market_inventory.sort
  end
end
