class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0
  end
end

# Alan looked at the code and spotted a mistake. 
#"This will fail when update_quantity is called", he says.

# What is the mistake

# Answer: The update_quantity method is setting a new value for quantity. It 
# does not use the @quanity as needed in order to change it.
# Currently there is only an attr_reader for the quantity variable. There is no
# setter method, either through a custom written one, or attr_writer / attr_accessor