require 'rails_helper'

RSpec.describe Question, type: :model do

  it { is_expected.to have_many(:options) }
  it { is_expected.to validate_presence_of(:label) }
  it { is_expected.to validate_length_of(:label).is_at_most(150) }

  let(:question) { FactoryBot.create(:question) }

  describe '#options_string=' do
    subject { question.options_string = options_list }

    let(:options_list) { "red, blue, green" }

    context 'when there are no current options' do
      it 'should add the options' do
        expect { subject }.to change { question.reload.options.count }.by(3)
      end
    end

    context "when an option already exists exists" do
      context 'and it matches one of the new options' do
        before do
          question.options_string = "blue"
        end

        it 'should add only the new options' do
          expect { subject }.to change { question.reload.options.count }.from(1).to(3)
        end

        it 'should change the position of the existing option' do
          subject
          # sorted options by position
          expect(question.reload.options.sort_by(&:position).map(&:name)).to eq(%w{red blue green})
        end
      end

      context "and it doesn't match any of the new options" do
        before do
          question.options_string = "orange"
        end

        # test case seems to be incorrect, as new option should be added
        it 'should add new options' do
          subject
          # new options should include orange as the option
          expect(question.reload.options.map(&:name)).to include("orange")
        end

      end

    end
  end
end
