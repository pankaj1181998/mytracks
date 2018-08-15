require "application_system_test_case"

class VidsTest < ApplicationSystemTestCase
  setup do
    @vid = vids(:one)
  end

  test "visiting the index" do
    visit vids_url
    assert_selector "h1", text: "Vids"
  end

  test "creating a Vid" do
    visit vids_url
    click_on "New Vid"

    fill_in "Image", with: @vid.image
    fill_in "Title", with: @vid.title
    fill_in "Vid Link", with: @vid.vid_link
    click_on "Create Vid"

    assert_text "Vid was successfully created"
    click_on "Back"
  end

  test "updating a Vid" do
    visit vids_url
    click_on "Edit", match: :first

    fill_in "Image", with: @vid.image
    fill_in "Title", with: @vid.title
    fill_in "Vid Link", with: @vid.vid_link
    click_on "Update Vid"

    assert_text "Vid was successfully updated"
    click_on "Back"
  end

  test "destroying a Vid" do
    visit vids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vid was successfully destroyed"
  end
end
