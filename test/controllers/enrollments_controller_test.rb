require 'test_helper'

class EnrollmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enrollment = enrollments(:one)
  end

  test "should get index" do
    get enrollments_index_url
    assert_response :success
  end

  test "should get new" do
    get new_enrollment_url
    assert_response :success
  end

  test "should create enrollment" do
    assert_difference('Enrollments.count') do
      post enrollments_index_url, params: { enrollment: { section: @enrollment.section, student: @enrollment.student } }
    end

    assert_redirected_to enrollment_url(Enrollments.last)
  end

  test "should show enrollment" do
    get enrollment_url(@enrollment)
    assert_response :success
  end

  test "should get edit" do
    get edit_enrollment_url(@enrollment)
    assert_response :success
  end

  test "should update enrollment" do
    patch enrollment_url(@enrollment), params: { enrollment: { section: @enrollment.section, student: @enrollment.student } }
    assert_redirected_to enrollment_url(@enrollment)
  end

  test "should destroy enrollment" do
    assert_difference('Enrollments.count', -1) do
      delete enrollment_url(@enrollment)
    end

    assert_redirected_to enrollments_index_url
  end
end
