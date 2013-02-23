require 'spec_helper'

describe "firearms/edit" do
  before(:each) do
    @firearm = assign(:firearm, stub_model(Firearm,
      :location => "MyString"
    ))
  end

  it "renders the edit firearm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => firearms_path(@firearm), :method => "post" do
      assert_select "input#firearm_location", :name => "firearm[location]"
    end
  end
end
