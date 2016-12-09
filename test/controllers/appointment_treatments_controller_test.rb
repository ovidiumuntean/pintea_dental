require 'test_helper'

class AppointmentTreatmentsControllerTest < ActionController::TestCase
  setup do
    @appointment_treatment = appointment_treatments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appointment_treatments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create appointment_treatment" do
    assert_difference('AppointmentTreatment.count') do
      post :create, appointment_treatment: { appointment_id: @appointment_treatment.appointment_id, tooth_treatment_id: @appointment_treatment.tooth_treatment_id }
    end

    assert_redirected_to appointment_treatment_path(assigns(:appointment_treatment))
  end

  test "should show appointment_treatment" do
    get :show, id: @appointment_treatment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @appointment_treatment
    assert_response :success
  end

  test "should update appointment_treatment" do
    patch :update, id: @appointment_treatment, appointment_treatment: { appointment_id: @appointment_treatment.appointment_id, tooth_treatment_id: @appointment_treatment.tooth_treatment_id }
    assert_redirected_to appointment_treatment_path(assigns(:appointment_treatment))
  end

  test "should destroy appointment_treatment" do
    assert_difference('AppointmentTreatment.count', -1) do
      delete :destroy, id: @appointment_treatment
    end

    assert_redirected_to appointment_treatments_path
  end
end
