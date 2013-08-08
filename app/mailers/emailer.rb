class Emailer < ActionMailer::Base
  default :from => "elmer.thomas@sendgrid.com"
  domain = "http://yourdomain.com"
  
  def send_email(email)  
    # Contruct the URL to where the email is stored on the web
    @url = domain + "/" + "?read=" + email.id.to_s
    subject = "re: " + email.from
    mail(:to => email.from, :subject => subject)
  end
end