class Screens

  def home_screen
    @home_screen = HomeScreen.new
  end

  def registration_screen
    @registration_screen = RegistrationScreen.new
  end

  def wishlist
    @wishlist = Wishlist.new
  end
end