require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    email = 'test_posts@gmail.com'
    password = 'password123'
    User.create(email: email, name: 'MyName', password: password)
    post login_url(locale: :fr), params: { email: email, password: password }
  end

  test "should get index" do
    get posts_url(locale: :fr)
    assert_response :success
  end

  test "should get new" do
    get new_post_url(locale: :fr)
    assert_response :success
  end
end
