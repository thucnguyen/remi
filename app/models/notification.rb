class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :recipient, class_name: 'User'
  belongs_to :notifiable, polymorphic: true

  after_commit :notify, on: :create

  private

  def notify
    # NotificationRelayJob.perform_late
    # delay 5 seconds to wait for page reload
    NotificationRelayJob.set(wait_until: 5.seconds.from_now).perform_later(id)
  end
end
