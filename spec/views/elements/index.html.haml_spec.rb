require 'rails_helper'

RSpec.describe "elements/index.html.haml", type: :view do
  # before do
  #   render
  # end

  subject { render }

  it 'should render the badge with the number' do
    expect(subject).to have_css('#badges span.badge.badge-pill.badge-primary.example-class', text: "12")
  end

  it 'should render the badge with text from body' do
    expect(subject).to have_css('#badges span.badge.badge-pill.badge-primary', text: "Network For Good")
  end

  it 'should render the badge with text from block' do
    expect(subject).to have_css('#badges span.badge.badge-pill.badge-success', text: "Fundraiser")
  end
end
