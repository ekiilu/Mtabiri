require 'spec_helper'

describe "locationreports/new" do
  before(:each) do
    assign(:locationreport, stub_model(Locationreport,
      :index => "MyString"
    ).as_new_record)
  end

  it "renders new locationreport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locationreports_path, :method => "post" do
      assert_select "input#locationreport_index", :name => "locationreport[index]"
    end
  end
end
