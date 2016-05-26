require 'spec_helper'

describe "firework_comments/show" do
  before(:each) do
    @firework_comment = assign(:firework_comment, stub_model(FireworkComment,
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
