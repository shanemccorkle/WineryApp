require 'rails_helper'

RSpec.describe "wines/index", type: :view do
  before(:each) do
    assign(:wines, [
      Wine.create!(
        :name => "Name",
        :year => 1,
        :winery => nil
      ),
      Wine.create!(
        :name => "Name",
        :year => 1,
        :winery => nil
      )
    ])
  end

  it "renders a list of wines" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
