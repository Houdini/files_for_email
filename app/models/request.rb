class Request < ActiveRecord::Base

  validates :email, :presence => true, :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  validates :body, :presence => true

  after_create :notify

  protected
  def notify
    FileRequest.notification(self).deliver
  end
end
