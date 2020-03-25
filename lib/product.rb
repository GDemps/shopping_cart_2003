class Product

  attr_reader :category,
              :name,
              :unit_price,
              :quantity

  def initialize(category, name, unit_price = 3.70, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity
  end

  def quantity
    @quantity.to_i
  end

  def total_price
    @quantity.to_f * @unit_price
  end

  def is_hoarded?
    if @quantity == "0"
      return true
    else
      return false
    end
  end

  def hoard
    @quantity = "0"
  end

end
