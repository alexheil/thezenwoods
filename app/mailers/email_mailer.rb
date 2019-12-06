class EmailMailer < ApplicationMailer

  def success_email(email)
    @email = email
    mail(to: @email.email, subject: 'You\'re one step closer to helping out this planet! | The Zen Woods')
  end

  def email_blast(email)
    @email = email
    @post = Post.first
    mail(to: @email.email, subject: ' | The Zen Woods')
  end

end