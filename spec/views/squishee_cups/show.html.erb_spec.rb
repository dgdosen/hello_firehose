require 'spec_helper'

describe "squishee_cups/show" do
  before(:each) do
    @squishee_cup = assign(:squishee_cup, stub_model(SquisheeCup,
      :name => "Name",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Color/)
  end
end
