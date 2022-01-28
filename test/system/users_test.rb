require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    check "Active" if @user.active
    check "Admin" if @user.admin
    fill_in "Deactivated at", with: @user.deactivated_at
    fill_in "Email", with: @user.email
    fill_in "User data", with: @user.user_data
    fill_in "Username", with: @user.username
    check "Validated" if @user.validated
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    check "Active" if @user.active
    check "Admin" if @user.admin
    fill_in "Deactivated at", with: @user.deactivated_at
    fill_in "Email", with: @user.email
    fill_in "User data", with: @user.user_data
    fill_in "Username", with: @user.username
    check "Validated" if @user.validated
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
