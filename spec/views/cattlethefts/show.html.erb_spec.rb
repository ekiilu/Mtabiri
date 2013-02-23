require 'spec_helper'

describe "cattlethefts/show" do
  before(:each) do
    @cattletheft = assign(:cattletheft, stub_model(Cattletheft,
      :numberstolen => 1,
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Location/)
  end
end
