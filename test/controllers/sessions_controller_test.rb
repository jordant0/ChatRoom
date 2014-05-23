require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  setup do
    :new
    user_login
  end

  test "should get new" do
    get :new
    assert_response :success
  end  

  test "should create user" do
    user_login
    assert_nothing_raised('User.count') do
      post :create
    end

    assert_response :success
  end


  test "should destroy session" do
    assert_redirected_to rooms_path
  end  

end
