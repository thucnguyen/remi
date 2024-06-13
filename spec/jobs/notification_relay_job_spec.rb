require 'rails_helper'

RSpec.describe NotificationRelayJob, type: :job do
  # include ActiveJob::TestHelper

  let(:nofification) do
    user = FactoryBot.create(:user)
    # movie = FactoryBot.create(:movie)
    Notification.create(user: user, recipient: user, notifiable: user)
  end

  subject(:job) { described_class.perform_later(nofification.id) }

  it 'queues the job' do
    ActiveJob::Base.queue_adapter = :test
    expect { job }
      .to change(ActiveJob::Base.queue_adapter.enqueued_jobs, :size)
  end
end
