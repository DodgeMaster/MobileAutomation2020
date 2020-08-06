class Wishlist

  def initialize
    @choose_first_brand = Elements.new(:xpath, '//android.widget.RelativeLayout[@index="1"]')
    @add_element_to_wishlist = Elements.new(:xpath, '//android.widget.ImageButton[@resource-id="com.strawberrynetNew.android:id/btn_wishlist"]')
    @back_button = Elements.new(:xpath, '//android.widget.ImageButton[@content-desc="‎‏‎‎‎‎‎‏‎‏‏‏‎‎‎‎‎‏‎‎‏‎‎‎‎‏‏‏‏‏‎‏‏‎‏‏‎‎‎‎‏‏‏‏‏‏‏‎‏‏‏‏‏‎‏‎‎‏‏‎‏‎‎‎‎‎‏‏‏‎‏‎‎‎‎‎‏‏‎‏‏‎‎‏‎‏‎‏‏‏‏‏‎‎Navigate up‎‏‎‎‏‎"]')
    @shop_by_brand_button = Elements.new(:xpath, '//android.support.v7.widget.LinearLayoutCompat[@index="3"]')
    @wish_list_button = Elements.new(:xpath, '//android.widget.RelativeLayout[@index="17"]')
    @menu_button = Elements.new(:xpath, '//android.widget.ImageButton[@content-desc="Strawberrynet"]')
    @brand_name = Elements.new(:xpath, '//android.widget.TextView[@text="ABBA"]')
  end

  def click_on_shop_by_brand_button
    @shop_by_brand_button.click
  end

  def click_first_brand
    @choose_first_brand.click
  end

  def add_items_to_wishlist
    @add_element_to_wishlist.click_every_element_in_the_list
  end

  def navigate_to_wish_list
    @back_button.click
    @menu_button.click
    @wish_list_button.click
  end

  def brand_name_comparison
    actual = @welcome_message.get_text
    expected = "Welcome, #{name}"
    raise "Welcome message is not the same: Expected #{expected}, Actual: #{actual}" unless actual == expected
  end
end
