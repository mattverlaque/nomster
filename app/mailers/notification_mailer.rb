class NotificationMailer < ActionMailer::Base
  default from: "winning@runyourgym.com"

  def comment_added
    mail(to: "matt@runyourgym.com",
      subject: "A comment has been added to your gym!")
  end
end
