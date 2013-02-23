require 'spec_helper'

describe "conflicts/index" do
  before(:each) do
    assign(:conflicts, [
      stub_model(Conflict),
      stub_model(Conflict)
    ])
  end

  it "renders a list of conflicts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
