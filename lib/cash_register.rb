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
    
  def apply_discount
      if @discount != nil
      @total *= ((100.0 - discount.to_f)/100.0)
    end
    "After the discount, the total comes to $#{total}."
  end
  
end 