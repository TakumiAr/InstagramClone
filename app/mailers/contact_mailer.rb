class ContactMailer < ApplicationMailer
  def contact_mail(picture)
    @picture = picture

    mail to:"armktk0329m@gmail.com", subject:"メールが投稿されました。"
  end
end
