require 'rails_helper'

RSpec.describe "houses/index", type: :view do
  before(:each) do
    assign(:houses, [
      House.create!(
        rooms: 2,
        floors: 3,
        air_cond: false
      ),
      House.create!(
        rooms: 2,
        floors: 3,
        air_cond: false
      )
    ])
  end

  it "renders a list of houses" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
