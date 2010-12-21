class TestimonialsController < ApplicationController
  
  def index
    @testimonials = Testimonial.all
    @type = "testimonials"
  end

end
