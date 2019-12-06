class EmailMailerPreview < ActionMailer::Preview
  # Accessible from http://localhost:3000/rails/mailers/email/welcome

  def success_email
    EmailMailer.success_email(Email.first)
  end


end