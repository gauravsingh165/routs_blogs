require "test_helper"

class PiletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pilet = pilets(:one)
  end

  test "should get index" do
    get pilets_url
    assert_response :success
  end

  test "should get new" do
    get new_pilet_url
    assert_response :success
  end

  test "should create pilet" do
    assert_difference("Pilet.count") do
      post pilets_url, params: { pilet: { address: @pilet.address, age: @pilet.age, company: @pilet.company, email: @pilet.email, name: @pilet.name } }
    end

    assert_redirected_to pilet_url(Pilet.last)
  end

  test "should show pilet" do
    get pilet_url(@pilet)
    assert_response :success
  end

  test "should get edit" do
    get edit_pilet_url(@pilet)
    assert_response :success
  end

  test "should update pilet" do
    patch pilet_url(@pilet), params: { pilet: { address: @pilet.address, age: @pilet.age, company: @pilet.company, email: @pilet.email, name: @pilet.name } }
    assert_redirected_to pilet_url(@pilet)
  end

  test "should destroy pilet" do
    assert_difference("Pilet.count", -1) do
      delete pilet_url(@pilet)
    end

    assert_redirected_to pilets_url
  end
end
