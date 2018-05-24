class CashRegister
  attr_accessor :item :price :discount :last_item#:cash_register :cash_register_with_discount

#how do we create 2 types of cash registers? do instance methods get moved to inside these methods? or called outside this initialization method inside class?
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def self.total
    @total
  end

  def self.items
    @items
  end

  def self.add_item(item, price, quantity=1)
    @items << item
    @total += (price * quantity)
    #keep track of last item in case it needs to be voided
    last_item = [item, price, quantity]
  end

#how to apply discount methods for both types of cash register??
  def self.apply_discount
    if self::new.discount = 0
      puts "There is no discount to apply."
    else
      @total -= (@total * self::new.discount)
      puts "After the discount, the total comes to #{@total}"
    end
  end

#delete last added item and subtract price from total- how to find this item?
  def void_last_transaction
    @items::self.add_item.last_item[0]
    @total -= @items::self.add_item.last_item([1]*[2])
end
