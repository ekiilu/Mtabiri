require 'spec_helper'

describe "conflicts/new" do
  before(:each) do
    assign(:conflict, stub_model(Conflict).as_new_record)
  end

  it "renders new conflict form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conflicts_path, :method => "post" do
    end
  end
end
