class Movie < ApplicationRecord
  belongs_to :user

  validates :youtube_url, uniqueness: { case_sensitive: true }
end
