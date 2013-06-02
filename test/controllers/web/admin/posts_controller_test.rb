require 'test_helper'

class Web::Admin::PostsControllerTest < ActionController::TestCase
  setup do
    @post = create :post
    @attrs = attributes_for :post
  end

  test 'get index' do
    get :index
    assert_response :success
  end

  test 'get new' do
    get :new
    assert_response :success
  end

  test 'create post' do
    post :create, post: @attrs
    assert_response :redirect

    assert Post.find_by title: @attrs[:title]
  end

  test 'get edit' do
    get :edit, id: @post.id
    assert_response :success
  end

  test 'update post' do
    put :update, id: @post.id, post: @attrs
    assert_response :redirect

    assert Post.find_by title: @attrs[:title]
  end

  test 'destroy post' do
    delete :destroy, id: @post.id
    assert_response :redirect

    assert_nil Post.find_by id: @post.id
  end
end
