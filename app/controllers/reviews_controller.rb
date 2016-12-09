class ReviewsController < ApplicationController
	before_action :authorise

	def create
		@appointment_treatment = Appointment_Treatment.find params[:appointment_treatment_id]
		@review = @appointment_treatment.reviews.new(review_params)
		@review.patient_id = @current_patient.id  #sets the patient_id FK
		@review.save #saves the @comment
		User.setRegular(@comment.patient) #call to class method passing the correct user
		#object to the comments table
		respond_to do |format|
			format.html { redirect_to @appointment_treatment }
		end
	end

	private
	def comment_params #This is the method which whitelists the data fields from the form
		params.require(:review).permit(:content, :appointment_treatment_id, :patient_id, :stars)
	end
end
