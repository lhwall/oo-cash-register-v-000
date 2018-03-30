class CashRegister 
  attr_accessor :cash_register, :total, :discount, :items
  
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(item, amount, quantity = 1)
    @total += amount * quantity 
    @items << item
  end
  
end 