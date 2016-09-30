class InvoiceEntry
  attr_accessor :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    self.quantity = updated_count if updated_count >= 0
  end
end


# Is there anything wrong with using attr_accessor for quantity, then refering to it
# in the method update_quantity as self.quantity

# Answer: Nothing wrong syntactically. However by using attr_access, you now allow
# for the updating of quantity outside of the update_quantity method by using the 
# instance.quantity = new_value notation provided by attr_accessor and therefore
# can cirumnaviage guard clause put in place there.

