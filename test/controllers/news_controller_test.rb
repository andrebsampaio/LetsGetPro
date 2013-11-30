require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  setup do
    @post = news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create posts" do
    assert_difference('Post.count') do
      post :create, posts: { shares: @post.author, content: @post.content, date: @post.date, title: @post.title }
    end

    assert_redirected_to news_path(assigns(:posts))
  end

  test "should show posts" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update posts" do
    patch :update, id: @post, posts: { shares: @post.author, content: @post.content, date: @post.date, title: @post.title }
    assert_redirected_to news_path(assigns(:posts))
  end

  test "should destroy posts" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to news_index_path
  end
end
