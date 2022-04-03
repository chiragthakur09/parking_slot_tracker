require 'rails_helper'

RSpec.describe "slots/index", type: :view do
  before(:each) do
    assign(:slots, [
      Slot.create!(
        slot: 2
      ),
      Slot.create!(
        slot: 2
      )
    ])
  end

  it "renders a list of slots" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
