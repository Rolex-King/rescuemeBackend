require 'test_helper'

class RefugesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @refuge = refuges(:one)
  end

  test "should get index" do
    get refuges_url, as: :json
    assert_response :success
  end

  test "should create refuge" do
    assert_difference('Refuge.count') do
      post refuges_url, params: { refuge: { adress: @refuge.adress, capacity: @refuge.capacity, city: @refuge.city, name: @refuge.name } }, as: :json
    end

    assert_response 201
  end

  test "should show refuge" do
    get refuge_url(@refuge), as: :json
    assert_response :success
  end

  test "should update refuge" do
    patch refuge_url(@refuge), params: { refuge: { adress: @refuge.adress, capacity: @refuge.capacity, city: @refuge.city, name: @refuge.name } }, as: :json
    assert_response 200
  end

  test "should destroy refuge" do
    assert_difference('Refuge.count', -1) do
      delete refuge_url(@refuge), as: :json
    end

    assert_response 204
  end
end
