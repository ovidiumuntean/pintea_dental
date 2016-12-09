class PatientMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.patient_mailer.welcome.subject
  #
  def welcome(patient)
		@patient = patient
		mail(:to => patient.email, :subject => "Welcome to the blog site")
	end
end
