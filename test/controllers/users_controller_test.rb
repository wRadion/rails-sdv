require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url(locale: :fr)
    assert_response :success
  end

  test "should get new" do
    get register_url(locale: :fr)
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url(locale: :fr), params: {
        user: {
          email: 'test3@gmail.com',
          name: 'MyName',
          password: 'Password123',
          password_confirmation: 'Password123'
        }
      }
    end

    assert_redirected_to posts_url(locale: :fr)
  end

  test "should show user" do
    get user_url(@user, locale: :fr)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user, locale: :fr)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user, locale: :fr), params: {
      user: {
        email: @user.email,
        name: @user.name
      }
    }
    assert_redirected_to user_url(@user, locale: :fr)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user, locale: :fr)
    end

    assert_redirected_to users_url(locale: :fr)
  end
end
