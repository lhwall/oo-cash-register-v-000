class CashRegister 
  attr_accessor :cash_register, :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount/100
    @items = []
  end
  
  def add_item(item, amount, quantity = 1)
    @total += amount * quantity * (1 - discount)
    @items << item
    puts "After the discount, the total comes to $#{total}"
  end
  
end 