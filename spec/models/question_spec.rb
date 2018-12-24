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
          expect(question.reload.options.map(&:name)).to eq(%w{red blue green})
        end
      end

      context "and it doesn't match any of the new options" do
        before do
          question.options_string = "orange"
        end

        it 'should be removed' do
          subject
          expect(question.reload.options.map(&:name)).not_to include("orange")
        end

      end

    end
  end
end
