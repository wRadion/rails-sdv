require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_url(locale: :fr)
    assert_response :success
  end

  test "should delete destroy" do
    delete logout_url(locale: :fr)
    assert_redirected_to login_url(locale: :fr)
  end
end
