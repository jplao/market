require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/market'
require './lib/vendor'

class MarketTest < MiniTest::Test
  def test_it_exists
    market = Market.new("South Pearl Street Farmers Market")

    assert_instance_of Market, market
  end

  def test_it_exists
    market = Market.new("South Pearl Street Farmers Market")

    assert_equal "South Pearl Street Farmers Market", market.name
  end

  def test_market_starts_with_no_vendors
    market = Market.new("South Pearl Street Farmers Market")

    assert_equal [], market.vendors
  end

  def test_you_can_add_vendors_to_market
    market = Market.new("South Pearl Street Farmers Market")
    vendor_1 = Vendor.new("Rocky Mountain Fresh")

    market.add_vendor(vendor_1)
    assert_equal [vendor_1], market.vendors
  end

end
