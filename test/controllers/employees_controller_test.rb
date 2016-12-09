require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { address1: @employee.address1, address2: @employee.address2, birthday: @employee.birthday, city: @employee.city, clinic_id: @employee.clinic_id, country_id: @employee.country_id, county: @employee.county, email: @employee.email, first_name: @employee.first_name, gender_id: @employee.gender_id, hire_date: @employee.hire_date, job_title: @employee.job_title, password_digest: @employee.password_digest, phone: @employee.phone, postal_code: @employee.postal_code, surname: @employee.surname }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { address1: @employee.address1, address2: @employee.address2, birthday: @employee.birthday, city: @employee.city, clinic_id: @employee.clinic_id, country_id: @employee.country_id, county: @employee.county, email: @employee.email, first_name: @employee.first_name, gender_id: @employee.gender_id, hire_date: @employee.hire_date, job_title: @employee.job_title, password_digest: @employee.password_digest, phone: @employee.phone, postal_code: @employee.postal_code, surname: @employee.surname }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
