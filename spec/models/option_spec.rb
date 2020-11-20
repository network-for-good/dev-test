require 'rails_helper'

RSpec.describe Option, type: :model do
  subject { FactoryBot.create(:option) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:position) }
end
