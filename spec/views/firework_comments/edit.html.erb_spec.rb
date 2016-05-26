require 'spec_helper'

describe "firework_comments/edit" do
  before(:each) do
    @firework_comment = assign(:firework_comment, stub_model(FireworkComment,
      :comment => "MyText"
    ))
  end

  it "renders the edit firework_comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", firework_comment_path(@firework_comment), "post" do
      assert_select "textarea#firework_comment_comment[name=?]", "firework_comment[comment]"
    end
  end
end
