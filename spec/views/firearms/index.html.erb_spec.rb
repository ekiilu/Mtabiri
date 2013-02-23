require 'spec_helper'

describe "firearms/index" do
  before(:each) do
    assign(:firearms, [
      stub_model(Firearm,
        :location => "Location"
      ),
      stub_model(Firearm,
        :location => "Location"
      )
    ])
  end

  it "renders a list of firearms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
