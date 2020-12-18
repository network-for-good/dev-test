require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  describe 'POST #create' do
    let(:question_params) do
      { question: { label: 'What is 1 + 1?',
        options: [' 2', '3', '42'] } }
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

  context 'with invalid input' do
    it 'renders /new' do
      post :create, params: { question: { label: '' } }
      expect(response).to be_successful
      # NOTE: this assertion was removed from Rails v5.1, but is provided in this test app via the rails-controller-testing gem
      expect(response).to render_template('new')
    end
  end
end
