class NotificationRelayJob < ApplicationJob
  queue_as :default

  def perform(notification_id)
    notification = Notification.find(notification_id)

    html = "<div>#{notification.user.email} shared a move #{notification.notifiable.youtube_url}</div>"
    ActionCable.server.broadcast("notifications:#{notification.recipient_id}",
                                 html: html)
  end
end
