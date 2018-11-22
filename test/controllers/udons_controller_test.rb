require 'test_helper'

class UdonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udon = udons(:one)
  end

  test "should get index" do
    get udons_url
    assert_response :success
  end

  test "should get new" do
    get new_udon_url
    assert_response :success
  end

  test "should create udon" do
    assert_difference('Udon.count') do
      post udons_url, params: { udon: { kill_count: @udon.kill_count, name: @udon.name } }
    end

    assert_redirected_to udon_url(Udon.last)
  end

  test "should show udon" do
    get udon_url(@udon)
    assert_response :success
  end

  test "should get edit" do
    get edit_udon_url(@udon)
    assert_response :success
  end

  test "should update udon" do
    patch udon_url(@udon), params: { udon: { kill_count: @udon.kill_count, name: @udon.name } }
    assert_redirected_to udon_url(@udon)
  end

  test "should destroy udon" do
    assert_difference('Udon.count', -1) do
      delete udon_url(@udon)
    end

    assert_redirected_to udons_url
  end
end
