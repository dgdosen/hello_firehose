require 'spec_helper'

describe "squishee_cups/edit" do
  before(:each) do
    @squishee_cup = assign(:squishee_cup, stub_model(SquisheeCup,
      :name => "MyString",
      :color => "MyString"
    ))
  end

  it "renders the edit squishee_cup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => squishee_cups_path(@squishee_cup), :method => "post" do
      assert_select "input#squishee_cup_name", :name => "squishee_cup[name]"
      assert_select "input#squishee_cup_color", :name => "squishee_cup[color]"
    end
  end
end
