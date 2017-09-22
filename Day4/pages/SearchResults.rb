require 'watir'

module SearchResultsPage

  def add_item_to_cart(item_result)
    $browser.img(:xpath=>"html/body/font/table[1]/tbody/tr[#{item_result}]/td[3]/a/img").click
  end

  def print_all_listings
    puts $browser.table(:xpath=>'html/body/font/table[1]').text
  end

  def print_product_listing(item_result)
    puts $browser.table(:xpath=>'html/body/font/table[1]').td(:xpath=>"tbody/tr[#{item_result}]/td[2]").text
    puts $browser.font(:xpath=>"html/body/font/table[1]/tbody/tr[#{item_result}]/td[3]/font").text
  end

end
