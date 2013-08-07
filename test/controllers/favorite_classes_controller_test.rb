require 'test_helper'

class FavoriteClassesControllerTest < ActionController::TestCase
  setup do
    @favorite_class = favorite_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_class" do
    assert_difference('FavoriteClass.count') do
      post :create, favorite_class: { dance_class_id: @favorite_class.dance_class_id, user_id: @favorite_class.user_id }
    end

    assert_redirected_to favorite_class_path(assigns(:favorite_class))
  end

  test "should show favorite_class" do
    get :show, id: @favorite_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_class
    assert_response :success
  end

  test "should update favorite_class" do
    patch :update, id: @favorite_class, favorite_class: { dance_class_id: @favorite_class.dance_class_id, user_id: @favorite_class.user_id }
    assert_redirected_to favorite_class_path(assigns(:favorite_class))
  end

  test "should destroy favorite_class" do
    assert_difference('FavoriteClass.count', -1) do
      delete :destroy, id: @favorite_class
    end

    assert_redirected_to favorite_classes_path
  end
end
