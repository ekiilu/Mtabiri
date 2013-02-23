require 'spec_helper'

describe "members/index" do
  before(:each) do
    assign(:members, [
      stub_model(Member,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :age => "",
        :location => "",
        :nationalid => "Nationalid",
        :gender => "Gender"
      ),
      stub_model(Member,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :age => "",
        :location => "",
        :nationalid => "Nationalid",
        :gender => "Gender"
      )
    ])
  end

  it "renders a list of members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Nationalid".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
  end
end
