require 'watir'

module SearchPage
  #Define each action as a method

  #Watir code for searching for a product
  def search_product(product)
    $browser.text_field(:name=>'txtSearch').set(product)
  end

  #Watir code for clicking Go
  def click_go
    $browser.button(:id=>'Go').click
  end

  def search_for_product_and_click_go(product)
    search_product(product)
    click_go
  end

  def print_title
    return $browser.title
  end

end
