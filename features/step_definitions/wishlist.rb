When(/^I open the side menu$/) do
  @screens.home_screen.click_burger_menu
end

And(/^I navigate to Shop By Brands sections$/) do
  @screens.wishlist.click_on_shop_by_brand_button
end

And(/^I choose the first brand$/) do
  @screens.wishlist.click_first_brand
end

And(/^I add all the visible items to my wishlist$/) do
  @screens.wishlist.add_items_to_wishlist
end

When(/^I navigate to wishlist$/) do
  @screens.wishlist.navigate_to_wish_list
end

Then(/^All the items are from the selected brand$/) do
  @screens.wishlist.brand_name_comparison()
end