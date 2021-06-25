require "application_system_test_case"

class QuestionPointsTest < ApplicationSystemTestCase
  setup do
    @question_point = question_points(:one)
  end

  test "visiting the index" do
    visit question_points_url
    assert_selector "h1", text: "Question Points"
  end

  test "creating a Question point" do
    visit question_points_url
    click_on "New Question Point"

    fill_in "Extra", with: @question_point.extra
    fill_in "Point", with: @question_point.point
    fill_in "Question", with: @question_point.question_id
    fill_in "User", with: @question_point.user_id
    click_on "Create Question point"

    assert_text "Question point was successfully created"
    click_on "Back"
  end

  test "updating a Question point" do
    visit question_points_url
    click_on "Edit", match: :first

    fill_in "Extra", with: @question_point.extra
    fill_in "Point", with: @question_point.point
    fill_in "Question", with: @question_point.question_id
    fill_in "User", with: @question_point.user_id
    click_on "Update Question point"

    assert_text "Question point was successfully updated"
    click_on "Back"
  end

  test "destroying a Question point" do
    visit question_points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question point was successfully destroyed"
  end
end
