require 'watir'

module ShoppingCartPage

  def modify_quantity_and_recalculate(qty)
    puts "Update quantity: #{qty} and clicking recalculate"
  end

  def click_continue_shopping
    puts "Clicks continue shopping"
  end

  def click_checkout
    $browser.button(:name => 'cmdSubmit', :value=> 'Proceed to Checkout').click
  end

end
