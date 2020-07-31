require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times{@items << title}
  end
  
  def apply_discount
    
    if @total == 0
      "There is no discount to apply."
    else
      self.total = (@total * (1.0 - (0.01 * @discount))).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  
  end
  
  
  def void_last_transaction
  
  
  


end
