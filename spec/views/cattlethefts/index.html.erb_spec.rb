require 'spec_helper'

describe "cattlethefts/index" do
  before(:each) do
    assign(:cattlethefts, [
      stub_model(Cattletheft,
        :numberstolen => 1,
        :location => "Location"
      ),
      stub_model(Cattletheft,
        :numberstolen => 1,
        :location => "Location"
      )
    ])
  end

  it "renders a list of cattlethefts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
