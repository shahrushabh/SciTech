require 'test_helper'

class Repositories::BranchesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get repositories_branches_new_url
    assert_response :success
  end

  test "should get create" do
    get repositories_branches_create_url
    assert_response :success
  end

  test "should get update" do
    get repositories_branches_update_url
    assert_response :success
  end

  test "should get edit" do
    get repositories_branches_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get repositories_branches_destroy_url
    assert_response :success
  end

  test "should get index" do
    get repositories_branches_index_url
    assert_response :success
  end

  test "should get show" do
    get repositories_branches_show_url
    assert_response :success
  end

end
