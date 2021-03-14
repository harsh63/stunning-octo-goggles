class VeryLongTaskJob < ApplicationJob
  queue_as :default

  after_perform do |job|
    UserMailer.purchase_email(item: job.arguments.first, user_email: job.arguments.second).deliver_now
  end

  def perform(_item, _user_mail)
    sleep 60
    true
  end
end
