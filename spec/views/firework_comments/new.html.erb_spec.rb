require 'spec_helper'

describe "firework_comments/new" do
  before(:each) do
    assign(:firework_comment, stub_model(FireworkComment,
      :comment => "MyText"
    ).as_new_record)
  end

  it "renders new firework_comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", firework_comments_path, "post" do
      assert_select "textarea#firework_comment_comment[name=?]", "firework_comment[comment]"
    end
  end
end
