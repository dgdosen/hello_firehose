require 'spec_helper'

describe "squishee_cups/index" do
  before(:each) do
    assign(:squishee_cups, [
      stub_model(SquisheeCup,
        :name => "Name",
        :color => "Color"
      ),
      stub_model(SquisheeCup,
        :name => "Name",
        :color => "Color"
      )
    ])
  end

  it "renders a list of squishee_cups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
