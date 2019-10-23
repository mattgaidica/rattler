require 'test_helper'

class SquirrelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @squirrel = squirrels(:one)
  end

  test "should get index" do
    get squirrels_url
    assert_response :success
  end

  test "should get new" do
    get new_squirrel_url
    assert_response :success
  end

  test "should create squirrel" do
    assert_difference('Squirrel.count') do
      post squirrels_url, params: { squirrel: { name: @squirrel.name } }
    end

    assert_redirected_to squirrel_url(Squirrel.last)
  end

  test "should show squirrel" do
    get squirrel_url(@squirrel)
    assert_response :success
  end

  test "should get edit" do
    get edit_squirrel_url(@squirrel)
    assert_response :success
  end

  test "should update squirrel" do
    patch squirrel_url(@squirrel), params: { squirrel: { name: @squirrel.name } }
    assert_redirected_to squirrel_url(@squirrel)
  end

  test "should destroy squirrel" do
    assert_difference('Squirrel.count', -1) do
      delete squirrel_url(@squirrel)
    end

    assert_redirected_to squirrels_url
  end
end
