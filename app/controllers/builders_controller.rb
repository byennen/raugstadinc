class BuildersController < ApplicationController

  def index
    @builders = Builder.all
    @type = "meet_the_builders"
  end
  
end
