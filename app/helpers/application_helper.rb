module ApplicationHelper
	def number_to_currency(number, options = {})
	  options[:locale] ||= I18n.locale
	  super(number, options)
	end
	def signed_in?
		if session[:patient_id].nil?
			return
		else
			@current_patient = Patient.find_by_id(session[:patient_id])
		end
	end
	
	def employeesigned_in?
		if session[:employee_id].nil?
			return
		else
			@current_employee = Employee.find_by_id(session[:employee_id])
		end
	end
	def age(dob)
	  now = Time.now.utc.to_date
	  now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
	end
end
