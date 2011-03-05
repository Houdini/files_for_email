class FileRequest < ActionMailer::Base
  default :from => AppConfig.mail['from']
  def notification request
    @request = request
    mail :to => AppConfig.notify_emails, :subject => AppConfig.notify_subject, :reply_to => @request.email
  end
end
