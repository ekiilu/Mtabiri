require 'spec_helper'

describe "firearms/new" do
  before(:each) do
    assign(:firearm, stub_model(Firearm,
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new firearm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => firearms_path, :method => "post" do
      assert_select "input#firearm_location", :name => "firearm[location]"
    end
  end
end
