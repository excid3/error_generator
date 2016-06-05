require 'test_helper'

class CurlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curl = curls(:one)
  end

  test "should get index" do
    get curls_url
    assert_response :success
  end

  test "should get new" do
    get new_curl_url
    assert_response :success
  end

  test "should create curl" do
    assert_difference('Curl.count') do
      post curls_url, params: { curl: {  } }
    end

    assert_redirected_to curl_path(Curl.last)
  end

  test "should show curl" do
    get curl_url(@curl)
    assert_response :success
  end

  test "should get edit" do
    get edit_curl_url(@curl)
    assert_response :success
  end

  test "should update curl" do
    patch curl_url(@curl), params: { curl: {  } }
    assert_redirected_to curl_path(@curl)
  end

  test "should destroy curl" do
    assert_difference('Curl.count', -1) do
      delete curl_url(@curl)
    end

    assert_redirected_to curls_path
  end
end
