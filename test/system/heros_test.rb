require "application_system_test_case"

class HerosTest < ApplicationSystemTestCase
  setup do
    @hero = heros(:one)
  end

  test "visiting the index" do
    visit heros_url
    assert_selector "h1", text: "Heros"
  end

  test "creating a Hero" do
    visit heros_url
    click_on "New Hero"

    fill_in "Attack", with: @hero.attack
    fill_in "Health", with: @hero.health
    fill_in "Name", with: @hero.name
    fill_in "Spc atk", with: @hero.spc_atk
    fill_in "Special", with: @hero.special
    fill_in "Status", with: @hero.status
    click_on "Create Hero"

    assert_text "Hero was successfully created"
    click_on "Back"
  end

  test "updating a Hero" do
    visit heros_url
    click_on "Edit", match: :first

    fill_in "Attack", with: @hero.attack
    fill_in "Health", with: @hero.health
    fill_in "Name", with: @hero.name
    fill_in "Spc atk", with: @hero.spc_atk
    fill_in "Special", with: @hero.special
    fill_in "Status", with: @hero.status
    click_on "Update Hero"

    assert_text "Hero was successfully updated"
    click_on "Back"
  end

  test "destroying a Hero" do
    visit heros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hero was successfully destroyed"
  end
end
