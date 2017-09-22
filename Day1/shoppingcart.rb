#1. Go to page
def navigate_to_page(page)
	puts "Navigating to #{page}"
end

#2. Search for a product
def search_for_product(product)
	puts "Searching for #{product}"
end

#3. Add product to cart
def add_product_to_cart
	puts "Add product to cart"
end

#4. Modify cart
def modify_cart
	puts "Modifying cart - add/remove products or change quantity"
end

#5. Checkout
def checkout(credit_card_info)
	puts "Checking"
end

#6. Get confirmation

navigate_to_page("www.amazon.com")
search_for_product("TV")
search_for_product("Phone")
add_product_to_cart