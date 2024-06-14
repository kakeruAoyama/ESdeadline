require "test_helper"

class EntryControllerTest < ActionDispatch::IntegrationTest
  test "should get seats" do
    get entry_seats_url
    assert_response :success
  end
end
