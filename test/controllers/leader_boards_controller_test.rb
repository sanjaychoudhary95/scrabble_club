require 'test_helper'

class LeaderBoardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leader_boards_index_url
    assert_response :success
  end

end
