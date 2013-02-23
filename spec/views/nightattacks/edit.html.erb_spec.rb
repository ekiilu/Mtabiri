require 'spec_helper'

describe "nightattacks/edit" do
  before(:each) do
    @nightattack = assign(:nightattack, stub_model(Nightattack))
  end

  it "renders the edit nightattack form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nightattacks_path(@nightattack), :method => "post" do
    end
  end
end
