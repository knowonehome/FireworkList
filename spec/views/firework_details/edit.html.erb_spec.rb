require 'rails_helper'

RSpec.describe "firework_details/edit", type: :view do
  before(:each) do
    @firework_detail = assign(:firework_detail, FireworkDetail.create!(
      :cost => "",
      :purchased => "",
      :firework => nil
    ))
  end

  it "renders the edit firework_detail form" do
    render

    assert_select "form[action=?][method=?]", firework_detail_path(@firework_detail), "post" do

      assert_select "input#firework_detail_cost[name=?]", "firework_detail[cost]"

      assert_select "input#firework_detail_purchased[name=?]", "firework_detail[purchased]"

      assert_select "input#firework_detail_firework_id[name=?]", "firework_detail[firework_id]"
    end
  end
end
