require 'spec_helper'

describe "nightattacks/index" do
  before(:each) do
    assign(:nightattacks, [
      stub_model(Nightattack),
      stub_model(Nightattack)
    ])
  end

  it "renders a list of nightattacks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
