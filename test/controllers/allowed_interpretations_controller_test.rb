require 'test_helper'

class AllowedInterpretationsControllerTest < ActionController::TestCase
  setup do
    @allowed_interpretation = allowed_interpretations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allowed_interpretations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allowed_interpretation" do
    assert_difference('AllowedInterpretation.count') do
      post :create, allowed_interpretation: { description: @allowed_interpretation.description, direction: @allowed_interpretation.direction, formal_quality: @allowed_interpretation.formal_quality, name: @allowed_interpretation.name }
    end

    assert_redirected_to allowed_interpretation_path(assigns(:allowed_interpretation))
  end

  test "should show allowed_interpretation" do
    get :show, id: @allowed_interpretation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allowed_interpretation
    assert_response :success
  end

  test "should update allowed_interpretation" do
    patch :update, id: @allowed_interpretation, allowed_interpretation: { description: @allowed_interpretation.description, direction: @allowed_interpretation.direction, formal_quality: @allowed_interpretation.formal_quality, name: @allowed_interpretation.name }
    assert_redirected_to allowed_interpretation_path(assigns(:allowed_interpretation))
  end

  test "should destroy allowed_interpretation" do
    assert_difference('AllowedInterpretation.count', -1) do
      delete :destroy, id: @allowed_interpretation
    end

    assert_redirected_to allowed_interpretations_path
  end
end
