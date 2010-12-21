require 'test_helper'

class BuildersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Builder.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Builder.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Builder.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to builder_url(assigns(:builder))
  end
  
  def test_edit
    get :edit, :id => Builder.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Builder.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Builder.first
    assert_template 'edit'
  end

  def test_update_valid
    Builder.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Builder.first
    assert_redirected_to builder_url(assigns(:builder))
  end
  
  def test_destroy
    builder = Builder.first
    delete :destroy, :id => builder
    assert_redirected_to builders_url
    assert !Builder.exists?(builder.id)
  end
end
