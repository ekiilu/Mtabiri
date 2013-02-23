require 'spec_helper'

describe "nightattacks/show" do
  before(:each) do
    @nightattack = assign(:nightattack, stub_model(Nightattack))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
