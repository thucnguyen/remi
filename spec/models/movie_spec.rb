require 'rails_helper'

RSpec.describe Movie, type: :model do
  it { is_expected.to belong_to(:user) }

  it { is_expected.to validate_presence_of(:youtube_url) }
  it { is_expected.to validate_length_of(:youtube_url).is_at_most(255) }
  it { is_expected.to validate_uniqueness_of(:youtube_url) }
end
