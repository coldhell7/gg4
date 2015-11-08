require 'test_helper'

class GusersControllerTest < ActionController::TestCase
  setup do
    @guser = gusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guser" do
    assert_difference('Guser.count') do
      post :create, guser: { email: @guser.email, password: @guser.password }
    end

    assert_redirected_to guser_path(assigns(:guser))
  end

  test "should show guser" do
    get :show, id: @guser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guser
    assert_response :success
  end

  test "should update guser" do
    patch :update, id: @guser, guser: { email: @guser.email, password: @guser.password }
    assert_redirected_to guser_path(assigns(:guser))
  end

  test "should destroy guser" do
    assert_difference('Guser.count', -1) do
      delete :destroy, id: @guser
    end

    assert_redirected_to gusers_path
  end
end
