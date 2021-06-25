require 'test_helper'

class QuestionPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question_point = question_points(:one)
  end

  test "should get index" do
    get question_points_url
    assert_response :success
  end

  test "should get new" do
    get new_question_point_url
    assert_response :success
  end

  test "should create question_point" do
    assert_difference('QuestionPoint.count') do
      post question_points_url, params: { question_point: { extra: @question_point.extra, point: @question_point.point, question_id: @question_point.question_id, user_id: @question_point.user_id } }
    end

    assert_redirected_to question_point_url(QuestionPoint.last)
  end

  test "should show question_point" do
    get question_point_url(@question_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_question_point_url(@question_point)
    assert_response :success
  end

  test "should update question_point" do
    patch question_point_url(@question_point), params: { question_point: { extra: @question_point.extra, point: @question_point.point, question_id: @question_point.question_id, user_id: @question_point.user_id } }
    assert_redirected_to question_point_url(@question_point)
  end

  test "should destroy question_point" do
    assert_difference('QuestionPoint.count', -1) do
      delete question_point_url(@question_point)
    end

    assert_redirected_to question_points_url
  end
end
