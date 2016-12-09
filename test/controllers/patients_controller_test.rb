require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { address1: @patient.address1, address2: @patient.address2, birthday: @patient.birthday, city: @patient.city, cnp: @patient.cnp, country_id: @patient.country_id, county: @patient.county, email: @patient.email, first_name: @patient.first_name, gender_id: @patient.gender_id, insurance: @patient.insurance, password_digest: @patient.password_digest, phone: @patient.phone, postal_code: @patient.postal_code, registration_date: @patient.registration_date, surname: @patient.surname }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { address1: @patient.address1, address2: @patient.address2, birthday: @patient.birthday, city: @patient.city, cnp: @patient.cnp, country_id: @patient.country_id, county: @patient.county, email: @patient.email, first_name: @patient.first_name, gender_id: @patient.gender_id, insurance: @patient.insurance, password_digest: @patient.password_digest, phone: @patient.phone, postal_code: @patient.postal_code, registration_date: @patient.registration_date, surname: @patient.surname }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
