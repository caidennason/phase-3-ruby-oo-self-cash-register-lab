require 'pry'

class CashRegister

    attr_accessor :discount, :total, :quantity, :title, :arr, :price_arr

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @arr = [] #why initialize it here??
        @price_arr = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        @quantity = quantity
        @quantity.times do 
            @arr.push(title)
            @price_arr.push(title, price)
        end
    end

    def apply_discount
        self.total = self.total - @discount * 10
        if self.discount > 0
        "After the discount, the total comes to $#{self.total}."
        else
        "There is no discount to apply."
        end
    end

    def items
        @arr
    end

    def void_last_transaction
       @total -= @price_arr[-1]
       if @arr.length == @quantity
        @total = 0
       end
    end

#binding.pry
end