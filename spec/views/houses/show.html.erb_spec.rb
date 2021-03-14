require 'rails_helper'

RSpec.describe "houses/show", type: :view do
  before(:each) do
    @house = assign(:house, House.create!(
      rooms: 2,
      floors: 3,
      air_cond: false
    ))
  end
end
