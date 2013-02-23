require 'spec_helper'

describe "conflicts/show" do
  before(:each) do
    @conflict = assign(:conflict, stub_model(Conflict))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
