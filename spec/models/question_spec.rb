# frozen_string_literal: true

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
      it 'adds the new Options' do
        expect {
          question.options_string = 'red, blue, green'
          question.reload
        }.to change(question.options, :count).from(0).to(3)
      end
    end

    context "when an Option already exists" do
      before do
        question.options_string = option_name
      end

      context 'and it matches one of the new Options' do
        let(:option_name) { 'blue' }

        it 'inserts the new options around the existing option' do
          question.options_string = 'red, blue, green'
          question.reload
          expect(question.options.order(:position).pluck(:name)).to eq(%w{red blue green})
        end

        it 'changes the position of the blue Option' do
          blue_option = question.options.find_by(name: option_name)
          expect { question.options_string = 'red, blue, green' }.to change { blue_option.reload.position }.from(0).to(1)
        end
      end

      context "and it doesn't match any of the new Options" do
        let(:option_name) { 'orange' }

        it 'the original Option is removed from the list' do
          question.options_string = 'red, blue, green'
          expect(question.reload.options.map(&:name)).not_to include("orange")
        end

        it 'deletes the orange option' do
          orange_option = question.options.find_by(name: option_name)
          question.options_string = 'red, blue, green'
          expect(Option.find_by(id: orange_option.id)).to be_nil
        end
      end
    end
  end
end
