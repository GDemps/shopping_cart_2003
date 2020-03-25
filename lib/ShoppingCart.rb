require './lib/product'

class ShoppingCart

attr_reader :name,
            :capacity,
            :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def total_number_of_products
    total_number_of_products = @cart.products do |@cart.product|
      @quantity.to_i
  end

end
