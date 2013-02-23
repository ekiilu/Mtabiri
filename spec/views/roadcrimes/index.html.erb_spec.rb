require 'spec_helper'

describe "roadcrimes/index" do
  before(:each) do
    assign(:roadcrimes, [
      stub_model(Roadcrime,
        :nationalid => "Nationalid",
        :location => "Location"
      ),
      stub_model(Roadcrime,
        :nationalid => "Nationalid",
        :location => "Location"
      )
    ])
  end

  it "renders a list of roadcrimes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nationalid".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
