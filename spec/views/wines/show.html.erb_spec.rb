require 'rails_helper'

RSpec.describe "wines/show", type: :view do
  before(:each) do
    @wine = assign(:wine, Wine.create!(
      :name => "Name",
      :year => 1,
      :winery => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
