require 'spec_helper'

describe "roadcrimes/show" do
  before(:each) do
    @roadcrime = assign(:roadcrime, stub_model(Roadcrime,
      :nationalid => "Nationalid",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nationalid/)
    rendered.should match(/Location/)
  end
end
