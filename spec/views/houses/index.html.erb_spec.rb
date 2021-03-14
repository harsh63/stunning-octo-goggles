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
end
