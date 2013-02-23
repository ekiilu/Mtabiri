require 'spec_helper'

describe "roadcrimes/edit" do
  before(:each) do
    @roadcrime = assign(:roadcrime, stub_model(Roadcrime,
      :nationalid => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit roadcrime form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => roadcrimes_path(@roadcrime), :method => "post" do
      assert_select "input#roadcrime_nationalid", :name => "roadcrime[nationalid]"
      assert_select "input#roadcrime_location", :name => "roadcrime[location]"
    end
  end
end
