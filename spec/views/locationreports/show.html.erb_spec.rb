require 'spec_helper'

describe "locationreports/show" do
  before(:each) do
    @locationreport = assign(:locationreport, stub_model(Locationreport,
      :index => "Index"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Index/)
  end
end
