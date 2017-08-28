require 'rails_helper'

RSpec.describe "references/index", type: :view do
  before(:each) do
    assign(:references, [
      Reference.create!(
        :name => "Name",
        :email => "Email",
        :remark => "Remark"
      ),
      Reference.create!(
        :name => "Name",
        :email => "Email",
        :remark => "Remark"
      )
    ])
  end

  it "renders a list of references" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Remark".to_s, :count => 2
  end
end
