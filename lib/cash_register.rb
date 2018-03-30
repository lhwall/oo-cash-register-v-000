class CashRegister 
  attr_accessor :cash_register, :total, :discount, :items
  
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
    @items = []
  end
  
  def add_item(item, amount, quantity = 1)
    if @discount != nil
      @total += amount * quantity* ((100 - discount)/100)
    else
      @total += amount * quantity
    end 
    
    @items << item
    puts "After the discount, the total comes to $#{total}"
  end
  
end 