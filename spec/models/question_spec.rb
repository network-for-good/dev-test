require 'rails_helper'

# NOTE: Please change the application code to make the below specs pass;
# do not change the specs themselves

RSpec.describe Question, type: :model do
  it { is_expected.to have_many(:options) }
  it { is_expected.to validate_presence_of(:label) }
  it { is_expected.to validate_length_of(:label).is_at_most(150) }

  let(:question) { FactoryBot.create(:question) }

  describe '#options_string=' do
    context 'when there are no current Options' do
      it 'should add the new Options' do
        expect {
          question.options_string = 'red, blue, green'
          question.reload
        }.to change(question.options, :count).from(0).to(3)
      end
    end

    context "when an Option already exists" do
      before do
        question.options_string = 'blue'
      end

      context 'and it matches one of the new Options' do
        it 'should change the position of the existing Option' do
          question.options_string = 'red, blue, green'
          question.reload
          expect(question.options.order(:position).pluck(:name)).to eq(%w{red blue green})
        end
      end

      context "and it doesn't match any of the new Options" do
        before do
          question.options_string = 'orange'
        end

        it 'the original Option should be removed' do
          question.options_string = 'red, blue, green'
          expect(question.reload.options.map(&:name)).not_to include("orange")
        end
      end
    end
  end
end
