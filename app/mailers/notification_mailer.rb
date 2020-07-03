class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def account_created(account)
    @account = account
    mail(to: @account.email,
      subject: "Welcom to the App!")
  end
end
