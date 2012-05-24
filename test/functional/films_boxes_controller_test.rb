require 'test_helper'

class FilmsBoxesControllerTest < ActionController::TestCase
  setup do
    @films_box = films_boxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:films_boxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create films_box" do
    assert_difference('FilmsBox.count') do
      post :create, films_box: @films_box.attributes
    end

    assert_redirected_to films_box_path(assigns(:films_box))
  end

  test "should show films_box" do
    get :show, id: @films_box
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @films_box
    assert_response :success
  end

  test "should update films_box" do
    put :update, id: @films_box, films_box: @films_box.attributes
    assert_redirected_to films_box_path(assigns(:films_box))
  end

  test "should destroy films_box" do
    assert_difference('FilmsBox.count', -1) do
      delete :destroy, id: @films_box
    end

    assert_redirected_to films_boxes_path
  end
end
