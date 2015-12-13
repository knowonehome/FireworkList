require 'rails_helper'

RSpec.describe "firework_details/show", type: :view do
  before(:each) do
    @firework_detail = assign(:firework_detail, FireworkDetail.create!(
      :cost => "",
      :purchased => "",
      :firework => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
