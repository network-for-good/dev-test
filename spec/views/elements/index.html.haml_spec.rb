require 'rails_helper'

RSpec.describe "elements/index.html.haml", type: :view do
  before { render }

  # NOTE: the have_css assertion is provided by the Capybara gem; see https://rubydoc.info/github/jnicklas/capybara/master/Capybara%2FRSpecMatchers:have_css

  it 'should render the badge with the number' do
    expect(rendered).to have_css('#badges span.badge.badge-pill.badge-primary.example-class', text: "12")
  end

  it 'should render the badge with text from body' do
    expect(rendered).to have_css('#badges span.badge.badge-pill.badge-primary', text: "Network For Good")
  end

  it 'should render the badge with text from block' do
    expect(rendered).to have_css('#badges span.badge.badge-pill.badge-success', text: "Fundraising")
  end
end
