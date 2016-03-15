require 'rails_helper'

RSpec.describe "wines/edit", type: :view do
  before(:each) do
    @wine = assign(:wine, Wine.create!(
      :name => "MyString",
      :year => 1,
      :winery => nil
    ))
  end

  it "renders the edit wine form" do
    render

    assert_select "form[action=?][method=?]", wine_path(@wine), "post" do

      assert_select "input#wine_name[name=?]", "wine[name]"

      assert_select "input#wine_year[name=?]", "wine[year]"

      assert_select "input#wine_winery_id[name=?]", "wine[winery_id]"
    end
  end
end
