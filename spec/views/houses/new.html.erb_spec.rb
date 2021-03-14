require 'rails_helper'

RSpec.describe "houses/new", type: :view do
  before(:each) do
    assign(:house, House.new(
      rooms: 1,
      floors: 1,
      air_cond: false
    ))
  end

  it "renders new house form" do
    render

    assert_select "form[action=?][method=?]", houses_path, "post" do

      assert_select "input[name=?]", "house[rooms]"

      assert_select "input[name=?]", "house[floors]"

      assert_select "input[name=?]", "house[air_cond]"
    end
  end
end
