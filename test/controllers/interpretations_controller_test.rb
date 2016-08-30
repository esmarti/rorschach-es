require 'test_helper'

class InterpretationsControllerTest < ActionController::TestCase
  setup do
    @interpretation = interpretations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interpretations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interpretation" do
    assert_difference('Interpretation.count') do
      post :create, interpretation: { direction: @interpretation.direction, formalQuality: @interpretation.formalQuality }
    end

    assert_redirected_to interpretation_path(assigns(:interpretation))
  end

  test "should show interpretation" do
    get :show, id: @interpretation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interpretation
    assert_response :success
  end

  test "should update interpretation" do
    patch :update, id: @interpretation, interpretation: { direction: @interpretation.direction, formalQuality: @interpretation.formalQuality }
    assert_redirected_to interpretation_path(assigns(:interpretation))
  end

  test "should destroy interpretation" do
    assert_difference('Interpretation.count', -1) do
      delete :destroy, id: @interpretation
    end

    assert_redirected_to interpretations_path
  end
end
