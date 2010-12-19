class WelcomeController < ApplicationController
  def index
    @title = "Coming Soon"
    @type = "home"
  end
  
  def about
    @title = "About Us"
    @type = "about"
  end

end
