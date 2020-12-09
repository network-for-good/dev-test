require 'rails_helper'

# NOTE: Please change the application code to make the below specs pass;
# do not change the specs themselves

RSpec.describe Option, type: :model do
  subject { FactoryBot.create(:option) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:position) }
end
