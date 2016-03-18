require 'test_helper'

class SevicesControllerTest < ActionController::TestCase
  setup do
    @sevice = sevices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sevices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sevice" do
    assert_difference('Sevice.count') do
      post :create, sevice: {  }
    end

    assert_redirected_to sevice_path(assigns(:sevice))
  end

  test "should show sevice" do
    get :show, id: @sevice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sevice
    assert_response :success
  end

  test "should update sevice" do
    patch :update, id: @sevice, sevice: {  }
    assert_redirected_to sevice_path(assigns(:sevice))
  end

  test "should destroy sevice" do
    assert_difference('Sevice.count', -1) do
      delete :destroy, id: @sevice
    end

    assert_redirected_to sevices_path
  end
end
