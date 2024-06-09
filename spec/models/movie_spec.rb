require 'rails_helper'

RSpec.describe Movie, type: :model do
  it { is_expected.to belong_to(:user) }

  it { is_expected.to validate_uniqueness_of(:youtube_url) }
end
