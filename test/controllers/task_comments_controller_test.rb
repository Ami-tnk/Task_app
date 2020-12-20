require 'test_helper'

class TaskCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get task_comments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get task_comments_destroy_url
    assert_response :success
  end

end
