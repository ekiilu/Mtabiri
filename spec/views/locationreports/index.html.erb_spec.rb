require 'spec_helper'

describe "locationreports/index" do
  before(:each) do
    assign(:locationreports, [
      stub_model(Locationreport,
        :index => "Index"
      ),
      stub_model(Locationreport,
        :index => "Index"
      )
    ])
  end

  it "renders a list of locationreports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Index".to_s, :count => 2
  end
end
