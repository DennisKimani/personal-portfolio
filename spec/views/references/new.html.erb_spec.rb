require 'rails_helper'

RSpec.describe "references/new", type: :view do
  before(:each) do
    assign(:reference, Reference.new(
      :name => "MyString",
      :email => "MyString",
      :remark => "MyString"
    ))
  end

  it "renders new reference form" do
    render

    assert_select "form[action=?][method=?]", references_path, "post" do

      assert_select "input[name=?]", "reference[name]"

      assert_select "input[name=?]", "reference[email]"

      assert_select "input[name=?]", "reference[remark]"
    end
  end
end
