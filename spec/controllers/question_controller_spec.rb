require 'rails_helper'

RSpec.describe QuestionController, type: :controller do
  describe 'POST #create' do
    before do
      Question.delete_all
    end

    let(:question_params) do
      { label: 'What is 1 + 1?',
        options: ['2', '3', '42'] }
    end

    it 'creates a new Question' do
      expect {
        post :create, params: question_params
      }.to change(Question, :count).
      from(0).to(1)
    end

    it 'redirects the caller to GET #show' do
      post :create, params: question_params
      new_question = Question.first

      expect(new_question).to be_present
      expect(response).to redirect_to(question_path(new_question))
    end
  end
end
