require 'spec_helper'

describe "conflicts/edit" do
  before(:each) do
    @conflict = assign(:conflict, stub_model(Conflict))
  end

  it "renders the edit conflict form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => conflicts_path(@conflict), :method => "post" do
    end
  end
end
