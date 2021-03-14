class UserMailer < ApplicationMailer
  def purchase_email(item:, user_email:)
    @item = item
    mail(to: [@item.owner, user_email], subject: 'Purchased Sucessfully')
  end
end
