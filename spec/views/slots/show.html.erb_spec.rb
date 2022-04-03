require 'rails_helper'

RSpec.describe "slots/show", type: :view do
  before(:each) do
    @slot = assign(:slot, Slot.create!(
      slot: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
