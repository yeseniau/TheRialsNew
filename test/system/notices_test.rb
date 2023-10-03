require "application_system_test_case"

class NoticesTest < ApplicationSystemTestCase
  setup do
    @notice = notices(:one)
  end

  test "visiting the index" do
    visit notices_url
    assert_selector "h1", text: "Notices"
  end

  test "should create notice" do
    visit notices_url
    click_on "New notice"

    fill_in "Descripcion", with: @notice.descripcion
    fill_in "Title", with: @notice.title
    fill_in "Users", with: @notice.users_id
    click_on "Create Notice"

    assert_text "Notice was successfully created"
    click_on "Back"
  end

  test "should update Notice" do
    visit notice_url(@notice)
    click_on "Edit this notice", match: :first

    fill_in "Descripcion", with: @notice.descripcion
    fill_in "Title", with: @notice.title
    fill_in "Users", with: @notice.users_id
    click_on "Update Notice"

    assert_text "Notice was successfully updated"
    click_on "Back"
  end

  test "should destroy Notice" do
    visit notice_url(@notice)
    click_on "Destroy this notice", match: :first

    assert_text "Notice was successfully destroyed"
  end
end
