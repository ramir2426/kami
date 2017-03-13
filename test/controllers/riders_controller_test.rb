require 'test_helper'

class RidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rider = riders(:one)
  end

  test "should get index" do
    get riders_url
    assert_response :success
  end

  test "should get new" do
    get new_rider_url
    assert_response :success
  end

  test "should create rider" do
    assert_difference('Rider.count') do
      post riders_url, params: { rider: { age: @rider.age, cnic: @rider.cnic, cv: @rider.cv, driving_license: @rider.driving_license, email: @rider.email, gender: @rider.gender, ice_number: @rider.ice_number, name: @rider.name, phone: @rider.phone, qualification: @rider.qualification, reg_copy: @rider.reg_copy, work_experience: @rider.work_experience } }
    end

    assert_redirected_to rider_url(Rider.last)
  end

  test "should show rider" do
    get rider_url(@rider)
    assert_response :success
  end

  test "should get edit" do
    get edit_rider_url(@rider)
    assert_response :success
  end

  test "should update rider" do
    patch rider_url(@rider), params: { rider: { age: @rider.age, cnic: @rider.cnic, cv: @rider.cv, driving_license: @rider.driving_license, email: @rider.email, gender: @rider.gender, ice_number: @rider.ice_number, name: @rider.name, phone: @rider.phone, qualification: @rider.qualification, reg_copy: @rider.reg_copy, work_experience: @rider.work_experience } }
    assert_redirected_to rider_url(@rider)
  end

  test "should destroy rider" do
    assert_difference('Rider.count', -1) do
      delete rider_url(@rider)
    end

    assert_redirected_to riders_url
  end
end
