class CashRegister
  attr_accessor :items, :discount, :total, :last_item

#how do we create 2 types of cash registers? do instance methods get moved to inside these methods? or called outside this initialization method inside class?
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      self.items << item
    end
    #keep track of last item in case it needs to be voided
    self.last_item = price * quantity
  end

#how to apply discount methods for both types of cash register??
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

#delete last added item and subtract price from total- how to find this item?
  def void_last_transaction
    self.items = self.items - self.last_item
  end
end
