require 'spec_helper'

describe "locationreports/edit" do
  before(:each) do
    @locationreport = assign(:locationreport, stub_model(Locationreport,
      :index => "MyString"
    ))
  end

  it "renders the edit locationreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locationreports_path(@locationreport), :method => "post" do
      assert_select "input#locationreport_index", :name => "locationreport[index]"
    end
  end
end
