class PersonalMailer < ActionMailer::Base
  default from: 'info@kivio.com'

  def contact(args = {})
    @args = args
    mail(to: Figaro.env.email_address, subject: "Email from #{args[:name]}")
  end

end