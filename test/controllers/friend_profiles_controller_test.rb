require "test_helper"

class FriendProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friend_profile = friend_profiles(:one)
  end

  test "should get index" do
    get friend_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_friend_profile_url
    assert_response :success
  end

  test "should create friend_profile" do
    assert_difference('FriendProfile.count') do
      post friend_profiles_url, params: { friend_profile: { contact: @friend_profile.contact, email: @friend_profile.email, first_name: @friend_profile.first_name, image: @friend_profile.image, last_name: @friend_profile.last_name } }
    end

    assert_redirected_to friend_profile_url(FriendProfile.last)
  end

  test "should show friend_profile" do
    get friend_profile_url(@friend_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_friend_profile_url(@friend_profile)
    assert_response :success
  end

  test "should update friend_profile" do
    patch friend_profile_url(@friend_profile), params: { friend_profile: { contact: @friend_profile.contact, email: @friend_profile.email, first_name: @friend_profile.first_name, image: @friend_profile.image, last_name: @friend_profile.last_name } }
    assert_redirected_to friend_profile_url(@friend_profile)
  end

  test "should destroy friend_profile" do
    assert_difference('FriendProfile.count', -1) do
      delete friend_profile_url(@friend_profile)
    end

    assert_redirected_to friend_profiles_url
  end
end
