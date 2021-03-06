require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/vendor'

class VendorTest < MiniTest::Test
  def test_it_exists
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_instance_of Vendor, vendor
  end

  def test_it_has_a_name
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal "Rocky Mountain Fresh", vendor.name
  end

  def test_inventory_starts_with_an_empty_hash
    vendor = Vendor.new("Rocky Mountain Fresh")

    expected = { }
    assert_equal expected, vendor.inventory
  end

  def test_stock_starts_with_zero_peaches
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal 0, vendor.check_stock("Peaches")
  end

  def test_it_can_stock_items
    vendor = Vendor.new("Rocky Mountain Fresh")

    vendor.stock("Peaches", 30)
    assert_equal 30, vendor.check_stock("Peaches")
  end

  def test_it_can_add_to_the_number_of_items_in_stock
    vendor = Vendor.new("Rocky Mountain Fresh")

    vendor.stock("Peaches", 30)
    vendor.stock("Peaches", 25)

    assert_equal 55, vendor.check_stock("Peaches")
  end

  def test_inventory_holds_all_stock
    vendor = Vendor.new("Rocky Mountain Fresh")
    vendor.stock("Peaches", 30)
    vendor.stock("Tomatoes", 12)

    expected = {"Peaches"=>30, "Tomatoes"=>12}
    assert_equal expected, vendor.inventory
  end

end
