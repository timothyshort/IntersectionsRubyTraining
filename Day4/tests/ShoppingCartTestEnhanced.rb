require 'watir'
require_relative '../pages/Search.rb'
require_relative '../pages/SearchResults.rb'
require_relative '../pages/ShoppingCart.rb'
require_relative '../../Utilities/Global.rb'

include Global

def do_shopping_cart_test(product, item_result)
  #Start the browser
  $browser = Watir::Browser.new:phantomjs
  $browser.window.maximize
  $browser.goto Global::SHOPPING_CART_URL

  #Search for the product
  include SearchPage
  SearchPage.search_for_product_and_click_go(product)

  #Add product to the cart
  include SearchResultsPage
  SearchResultsPage.print_all_listings
  SearchResultsPage.add_item_to_cart(item_result)

  #Shopping cart page: modify or click checkout
  include ShoppingCartPage
  ShoppingCartPage.modify_quantity_and_recalculate(1)
  ShoppingCartPage.click_checkout

  $browser.screenshot.save ("#{Global::OUTPUT_FOLDER}shopping_cart_02.png")

  #Checkout

  #Confirmation

  $browser.close
end

do_shopping_cart_test("tv",3)
