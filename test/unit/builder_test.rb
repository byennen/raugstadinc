require 'test_helper'

class BuilderTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Builder.new.valid?
  end
end
