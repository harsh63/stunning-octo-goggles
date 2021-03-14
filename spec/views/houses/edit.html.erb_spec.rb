require 'rails_helper'

RSpec.describe "houses/edit", type: :view do
  before(:each) do
    @house = assign(:house, House.create!(
      rooms: 1,
      floors: 1,
      air_cond: false
    ))
  end

  it "renders the edit house form" do
    render

    assert_select "form[action=?][method=?]", house_path(@house), "post" do

      assert_select "input[name=?]", "house[rooms]"

      assert_select "input[name=?]", "house[floors]"

      assert_select "input[name=?]", "house[air_cond]"
    end
  end
end
