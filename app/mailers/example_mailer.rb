class ExampleMailer < ApplicationMailer
    default from: 'administrateur@monSite.com'

    def welcome_email(list)
    @user = list
    @url  = 'http://monSite.com/login'
    mail(to: @user.email, subject: 'Bienvenue sur mon super Site')
  end
end
