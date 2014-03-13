require 'test_helper'

class CustomRoutsTest < ActionDispatch::IntegrationTest
   test "the /login routes open the login page" do
  get '/login'

  assert_response :success
  end

  test "the /logout routes open the login page" do
  get '/logout'

  assert_response :redirect
  assert_redirected_to '/'
  end
end
