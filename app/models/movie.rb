class Movie < ApplicationRecord
  belongs_to :user

  validates :youtube_url, presence: true
  validates :youtube_url, length: { maximum: 255 }
  validates :youtube_url, uniqueness: { case_sensitive: true }
end
