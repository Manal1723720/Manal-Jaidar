require 'test_helper'

class WoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wound = wounds(:one)
  end

  test "should get index" do
    get wounds_url
    assert_response :success
  end

  test "should get new" do
    get new_wound_url
    assert_response :success
  end

  test "should create wound" do
    assert_difference('Wound.count') do
      post wounds_url, params: { wound: { bezeichnung: @wound.bezeichnung, poly_id: @wound.poly_id, poly_type: @wound.poly_type } }
    end

    assert_redirected_to wound_url(Wound.last)
  end

  test "should show wound" do
    get wound_url(@wound)
    assert_response :success
  end

  test "should get edit" do
    get edit_wound_url(@wound)
    assert_response :success
  end

  test "should update wound" do
    patch wound_url(@wound), params: { wound: { bezeichnung: @wound.bezeichnung, poly_id: @wound.poly_id, poly_type: @wound.poly_type } }
    assert_redirected_to wound_url(@wound)
  end

  test "should destroy wound" do
    assert_difference('Wound.count', -1) do
      delete wound_url(@wound)
    end

    assert_redirected_to wounds_url
  end
end
