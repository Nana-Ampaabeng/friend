require "application_system_test_case"

class FriendProfilesTest < ApplicationSystemTestCase
  setup do
    @friend_profile = friend_profiles(:one)
  end

  test "visiting the index" do
    visit friend_profiles_url
    assert_selector "h1", text: "Friend Profiles"
  end

  test "creating a Friend profile" do
    visit friend_profiles_url
    click_on "New Friend Profile"

    fill_in "Contact", with: @friend_profile.contact
    fill_in "Email", with: @friend_profile.email
    fill_in "First name", with: @friend_profile.first_name
    fill_in "Image", with: @friend_profile.image
    fill_in "Last name", with: @friend_profile.last_name
    click_on "Create Friend profile"

    assert_text "Friend profile was successfully created"
    click_on "Back"
  end

  test "updating a Friend profile" do
    visit friend_profiles_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @friend_profile.contact
    fill_in "Email", with: @friend_profile.email
    fill_in "First name", with: @friend_profile.first_name
    fill_in "Image", with: @friend_profile.image
    fill_in "Last name", with: @friend_profile.last_name
    click_on "Update Friend profile"

    assert_text "Friend profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Friend profile" do
    visit friend_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friend profile was successfully destroyed"
  end
end
