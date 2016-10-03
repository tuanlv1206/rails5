require 'test_helper'

class AritclesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aritcles_index_url
    assert_response :success
  end

  test "should get show" do
    get aritcles_show_url
    assert_response :success
  end

  test "should get edit" do
    get aritcles_edit_url
    assert_response :success
  end

end
