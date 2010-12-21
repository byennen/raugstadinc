require 'test_helper'

class TestimonialTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Testimonial.new.valid?
  end
end
