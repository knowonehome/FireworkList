require 'spec_helper'

describe "firework_comments/index" do
  before(:each) do
    assign(:firework_comments, [
      stub_model(FireworkComment,
        :comment => "MyText"
      ),
      stub_model(FireworkComment,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of firework_comments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
