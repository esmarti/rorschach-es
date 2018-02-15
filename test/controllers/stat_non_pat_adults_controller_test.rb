require 'test_helper'

class StatNonPatAdultsControllerTest < ActionController::TestCase
  setup do
    @stat_non_pat_adult = stat_non_pat_adults(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stat_non_pat_adults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stat_non_pat_adult" do
    assert_difference('StatNonPatAdult.count') do
      post :create, stat_non_pat_adult: { freq: @stat_non_pat_adult.freq, ku: @stat_non_pat_adult.ku, ku: @stat_non_pat_adult.ku, max: @stat_non_pat_adult.max, max: @stat_non_pat_adult.max, mean: @stat_non_pat_adult.mean, mean: @stat_non_pat_adult.mean, median: @stat_non_pat_adult.median, median: @stat_non_pat_adult.median, min: @stat_non_pat_adult.min, min: @stat_non_pat_adult.min, mode: @stat_non_pat_adult.mode, mode: @stat_non_pat_adult.mode, sd: @stat_non_pat_adult.sd, sd: @stat_non_pat_adult.sd, sk: @stat_non_pat_adult.sk, sk: @stat_non_pat_adult.sk, variable: @stat_non_pat_adult.variable }
    end

    assert_redirected_to stat_non_pat_adult_path(assigns(:stat_non_pat_adult))
  end

  test "should show stat_non_pat_adult" do
    get :show, id: @stat_non_pat_adult
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stat_non_pat_adult
    assert_response :success
  end

  test "should update stat_non_pat_adult" do
    patch :update, id: @stat_non_pat_adult, stat_non_pat_adult: { freq: @stat_non_pat_adult.freq, ku: @stat_non_pat_adult.ku, ku: @stat_non_pat_adult.ku, max: @stat_non_pat_adult.max, max: @stat_non_pat_adult.max, mean: @stat_non_pat_adult.mean, mean: @stat_non_pat_adult.mean, median: @stat_non_pat_adult.median, median: @stat_non_pat_adult.median, min: @stat_non_pat_adult.min, min: @stat_non_pat_adult.min, mode: @stat_non_pat_adult.mode, mode: @stat_non_pat_adult.mode, sd: @stat_non_pat_adult.sd, sd: @stat_non_pat_adult.sd, sk: @stat_non_pat_adult.sk, sk: @stat_non_pat_adult.sk, variable: @stat_non_pat_adult.variable }
    assert_redirected_to stat_non_pat_adult_path(assigns(:stat_non_pat_adult))
  end

  test "should destroy stat_non_pat_adult" do
    assert_difference('StatNonPatAdult.count', -1) do
      delete :destroy, id: @stat_non_pat_adult
    end

    assert_redirected_to stat_non_pat_adults_path
  end
end
