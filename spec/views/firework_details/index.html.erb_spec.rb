require 'rails_helper'

RSpec.describe "firework_details/index", type: :view do
  before(:each) do
    assign(:firework_details, [
      FireworkDetail.create!(
        :cost => "",
        :purchased => "",
        :firework => nil
      ),
      FireworkDetail.create!(
        :cost => "",
        :purchased => "",
        :firework => nil
      )
    ])
  end

  it "renders a list of firework_details" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
