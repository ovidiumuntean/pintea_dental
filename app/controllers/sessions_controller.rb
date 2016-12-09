class SessionsController < ApplicationController
  def new
  end

  def create
	patient = Patient.find_by_email(params[:email])
	if patient && patient.authenticate(params[:password])
		session[:patient_id] = patient.id                #stores the id in the session
		redirect_to session[:return_to] || root_path			#displays the user/show view redirect_to user
	else
		flash.now[:error] = "Invalid email and password combination."
		render 'new'								#shows the login page again
	end
  end

  def destroy
	if signed_in?
		session[:patient_id] = nil
	else
		flash[:notice] = "You have to log in first"
	end
	redirect_to login_path
  end
  
  def employeenew
  end
  
  def employeecreate
	employee = Employee.find_by_email(params[:email])
	if employee && employee.authenticate(params[:password])
		session[:employee_id] = employee.id
		redirect_to session[:return_to] || root_path
	else
		flash.now[:error] = "Invalid email and password combination."
		redirect_to employeelogin_path, alert: "Invalid employee user/password combination"
	end
  end
  
  def employeedestroy
	session[:employee_id] = nil
		redirect_to root_path, notice: "Logged out"
	end
  end


