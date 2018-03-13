# Preview all emails at http://localhost:3000/rails/mailers/newsletter_mailer
class NewsletterMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/newsletter_mailer/signup
  def signup
    NewsletterMailerMailer.signup
  end

  # Preview this email at http://localhost:3000/rails/mailers/newsletter_mailer/cancel
  def cancel
    NewsletterMailerMailer.cancel
  end

end
