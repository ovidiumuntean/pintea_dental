require 'test_helper'

class ToothTreatmentsControllerTest < ActionController::TestCase
  setup do
    @tooth_treatment = tooth_treatments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tooth_treatments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tooth_treatment" do
    assert_difference('ToothTreatment.count') do
      post :create, tooth_treatment: { date_treatead: @tooth_treatment.date_treatead, tooth_id: @tooth_treatment.tooth_id, treatment_id: @tooth_treatment.treatment_id }
    end

    assert_redirected_to tooth_treatment_path(assigns(:tooth_treatment))
  end

  test "should show tooth_treatment" do
    get :show, id: @tooth_treatment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tooth_treatment
    assert_response :success
  end

  test "should update tooth_treatment" do
    patch :update, id: @tooth_treatment, tooth_treatment: { date_treatead: @tooth_treatment.date_treatead, tooth_id: @tooth_treatment.tooth_id, treatment_id: @tooth_treatment.treatment_id }
    assert_redirected_to tooth_treatment_path(assigns(:tooth_treatment))
  end

  test "should destroy tooth_treatment" do
    assert_difference('ToothTreatment.count', -1) do
      delete :destroy, id: @tooth_treatment
    end

    assert_redirected_to tooth_treatments_path
  end
end
