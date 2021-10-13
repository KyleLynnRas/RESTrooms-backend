require "test_helper"

class RestroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restroom = restrooms(:one)
  end

  test "should get index" do
    get restrooms_url, as: :json
    assert_response :success
  end

  test "should create restroom" do
    assert_difference('Restroom.count') do
      post restrooms_url, params: { restroom: { accessible: @restroom.accessible, changetable: @restroom.changetable, cleanlieness: @restroom.cleanlieness, free: @restroom.free, latitude: @restroom.latitude, longitude: @restroom.longitude, photo: @restroom.photo, public: @restroom.public, street: @restroom.street } }, as: :json
    end

    assert_response 201
  end

  test "should show restroom" do
    get restroom_url(@restroom), as: :json
    assert_response :success
  end

  test "should update restroom" do
    patch restroom_url(@restroom), params: { restroom: { accessible: @restroom.accessible, changetable: @restroom.changetable, cleanlieness: @restroom.cleanlieness, free: @restroom.free, latitude: @restroom.latitude, longitude: @restroom.longitude, photo: @restroom.photo, public: @restroom.public, street: @restroom.street } }, as: :json
    assert_response 200
  end

  test "should destroy restroom" do
    assert_difference('Restroom.count', -1) do
      delete restroom_url(@restroom), as: :json
    end

    assert_response 204
  end
end
