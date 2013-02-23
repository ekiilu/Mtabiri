require 'spec_helper'

describe "nightattacks/new" do
  before(:each) do
    assign(:nightattack, stub_model(Nightattack).as_new_record)
  end

  it "renders new nightattack form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nightattacks_path, :method => "post" do
    end
  end
end
