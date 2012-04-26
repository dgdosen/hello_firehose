require 'spec_helper'

describe "squishee_cups/new" do
  before(:each) do
    assign(:squishee_cup, stub_model(SquisheeCup,
      :name => "MyString",
      :color => "MyString"
    ).as_new_record)
  end

  it "renders new squishee_cup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => squishee_cups_path, :method => "post" do
      assert_select "input#squishee_cup_name", :name => "squishee_cup[name]"
      assert_select "input#squishee_cup_color", :name => "squishee_cup[color]"
    end
  end
end
