require 'spec_helper'

describe "firearms/show" do
  before(:each) do
    @firearm = assign(:firearm, stub_model(Firearm,
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Location/)
  end
end
