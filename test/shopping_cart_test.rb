require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/ShoppingCart'
require "pry"

class ShoppingCartTest < Minitest::Test

  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_instance_of ShoppingCart, cart
  end

  def test_it_added_product
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart = ShoppingCart.new("King Soopers", "30items")
    cart.add_product(product1)
    assert_equal cart.products, [product1]
    cart.add_product(product2)
    assert_equal cart.products, [product1,product2]
  end

  def test_if_total_number_of_products_works
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)
    binding.pry
    assert_equal cart.total_number_of_products, 3
  end

end
