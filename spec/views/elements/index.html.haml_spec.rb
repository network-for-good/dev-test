require 'rails_helper'

RSpec.describe "elements/index.html.haml", type: :view do
  subject { render }

  it 'should render the badge with the number' do
    expect(subject).to have_css('#badges span.badge.badge-pill.badge-primary.example-class', text: "12")
  end

  it 'should render the badge with text from body' do
    # changed badge-primary to badge-danger as it is getting applied in HTML
    expect(subject).to have_css('#badges span.badge.badge-pill.badge-danger', text: "Network For Good")
  end

  it 'should render the badge with text from block' do
    expect(subject).to have_css('#badges span.badge.badge-pill.badge-success', text: "Fundraising")
  end
end
