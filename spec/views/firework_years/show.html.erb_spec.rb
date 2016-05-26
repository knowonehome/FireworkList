require 'spec_helper'

describe "firework_years/show" do
  before(:each) do
    @firework_year = assign(:firework_year, stub_model(FireworkYear,
      :year => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
