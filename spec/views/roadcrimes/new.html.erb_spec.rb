require 'spec_helper'

describe "roadcrimes/new" do
  before(:each) do
    assign(:roadcrime, stub_model(Roadcrime,
      :nationalid => "MyString",
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new roadcrime form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => roadcrimes_path, :method => "post" do
      assert_select "input#roadcrime_nationalid", :name => "roadcrime[nationalid]"
      assert_select "input#roadcrime_location", :name => "roadcrime[location]"
    end
  end
end
