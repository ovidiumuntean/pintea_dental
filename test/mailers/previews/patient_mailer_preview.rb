# Preview all emails at http://localhost:3000/rails/mailers/patient_mailer
class PatientMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/patient_mailer/welcome
  def welcome
    PatientMailer.welcome
  end

end
