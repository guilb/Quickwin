require 'test_helper'

class MediasControllerTest < ActionController::TestCase
  setup do
    @media = medias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media" do
    assert_difference('Media.count') do
      post :create, :media => @media.attributes
    end

    assert_redirected_to media_path(assigns(:media))
  end

  test "should show media" do
    get :show, :id => @media.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @media.to_param
    assert_response :success
  end

  test "should update media" do
    put :update, :id => @media.to_param, :media => @media.attributes
    assert_redirected_to media_path(assigns(:media))
  end

  test "should destroy media" do
    assert_difference('Media.count', -1) do
      delete :destroy, :id => @media.to_param
    end

    assert_redirected_to medias_path
  end
end
