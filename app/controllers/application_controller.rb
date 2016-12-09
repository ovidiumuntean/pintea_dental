class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ApplicationHelper
  
	def authorise
		unless signed_in?
			store_location			#stores the location of the website where the user was
			redirect_to login_path, :notice => "Please sign in to access this page." 
		end
	end
	private
		def store_location
			session[:return_to]=request.fullpath		#return_to is a url and is stored in the session toghther with Id's
		end
		
	def employeeauthorise
		unless employeesigned_in?
			store_location			#stores the location of the website where the user was
			redirect_to employeelogin_path, :notice => "Please sign in to access this page." 
		end
	end
end
