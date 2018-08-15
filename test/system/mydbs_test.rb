require "application_system_test_case"

class MydbsTest < ApplicationSystemTestCase
  setup do
    @mydb = mydbs(:one)
  end

  test "visiting the index" do
    visit mydbs_url
    assert_selector "h1", text: "Mydbs"
  end

  test "creating a Mydb" do
    visit mydbs_url
    click_on "New Mydb"

    fill_in "Email", with: @mydb.email
    fill_in "Image", with: @mydb.image
    fill_in "Title", with: @mydb.title
    fill_in "Vid Link", with: @mydb.vid_link
    click_on "Create Mydb"

    assert_text "Mydb was successfully created"
    click_on "Back"
  end

  test "updating a Mydb" do
    visit mydbs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @mydb.email
    fill_in "Image", with: @mydb.image
    fill_in "Title", with: @mydb.title
    fill_in "Vid Link", with: @mydb.vid_link
    click_on "Update Mydb"

    assert_text "Mydb was successfully updated"
    click_on "Back"
  end

  test "destroying a Mydb" do
    visit mydbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mydb was successfully destroyed"
  end
end
