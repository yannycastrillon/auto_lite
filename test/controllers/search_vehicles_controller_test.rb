require 'test_helper'

class SearchVehiclesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get search_vehicles_search_url
    assert_response :success
  end

end
