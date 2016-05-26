require 'spec_helper'

describe "firework_years/new" do
  before(:each) do
    assign(:firework_year, stub_model(FireworkYear,
      :year => 1
    ).as_new_record)
  end

  it "renders new firework_year form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", firework_years_path, "post" do
      assert_select "input#firework_year_year[name=?]", "firework_year[year]"
    end
  end
end
