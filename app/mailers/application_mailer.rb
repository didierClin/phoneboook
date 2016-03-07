class ApplicationMailer < ActionMailer::Base
    default from: "admin_site@example.com"
  layout 'mailer'

  def sample_email(list)
    @list = list
    mail(to: @list.email, subject: 'Sample Email')
  end
end
