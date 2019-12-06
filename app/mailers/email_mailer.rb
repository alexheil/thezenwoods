class EmailMailer < ApplicationMailer

  def success_email(email)
    @email = email
    mail(to: @email.email, subject: 'You\'re one step closer to helping out this planet! | Ninth Valley')
  end

  def email_blast(email)
    @email = email
    @post = Post.first
    mail(to: @email.email, subject: ' | Ninth Valley')
  end

end