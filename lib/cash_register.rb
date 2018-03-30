class CashRegister 
  attr_accessor :cash_register, :total, :discount
  
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
  end
  
  def add_item(item, amount)
    @total += amount
  
end 