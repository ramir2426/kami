require 'test_helper'

class SalesmenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salesman = salesmen(:one)
  end

  test "should get index" do
    get salesmen_url
    assert_response :success
  end

  test "should get new" do
    get new_salesman_url
    assert_response :success
  end

  test "should create salesman" do
    assert_difference('Salesman.count') do
      post salesmen_url, params: { salesman: { age: @salesman.age, cv: @salesman.cv, email: @salesman.email, gender: @salesman.gender, job_type: @salesman.job_type, name: @salesman.name, phone: @salesman.phone, qualification: @salesman.qualification, work_experience: @salesman.work_experience } }
    end

    assert_redirected_to salesman_url(Salesman.last)
  end

  test "should show salesman" do
    get salesman_url(@salesman)
    assert_response :success
  end

  test "should get edit" do
    get edit_salesman_url(@salesman)
    assert_response :success
  end

  test "should update salesman" do
    patch salesman_url(@salesman), params: { salesman: { age: @salesman.age, cv: @salesman.cv, email: @salesman.email, gender: @salesman.gender, job_type: @salesman.job_type, name: @salesman.name, phone: @salesman.phone, qualification: @salesman.qualification, work_experience: @salesman.work_experience } }
    assert_redirected_to salesman_url(@salesman)
  end

  test "should destroy salesman" do
    assert_difference('Salesman.count', -1) do
      delete salesman_url(@salesman)
    end

    assert_redirected_to salesmen_url
  end
end
