require 'spec_helper'

describe "firework_years/edit" do
  before(:each) do
    @firework_year = assign(:firework_year, stub_model(FireworkYear,
      :year => 1
    ))
  end

  it "renders the edit firework_year form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", firework_year_path(@firework_year), "post" do
      assert_select "input#firework_year_year[name=?]", "firework_year[year]"
    end
  end
end
