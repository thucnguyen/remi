class Movie < ApplicationRecord
  belongs_to :user

  validates :youtube_url, presence: true
  validates :youtube_url, length: { maximum: 255 }
  validates :youtube_url, uniqueness: { case_sensitive: true }

  after_commit :create_notification, on: :create

  private

  def create_notification
    return if user.nil?
    
    Notification.create!(user: user, 
                         notifiable: self,
                         recipient: user,
                         action: 'create')
  end
end
