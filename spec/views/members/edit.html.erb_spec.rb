require 'spec_helper'

describe "members/edit" do
  before(:each) do
    @member = assign(:member, stub_model(Member,
      :firstname => "MyString",
      :lastname => "MyString",
      :age => "",
      :location => "",
      :nationalid => "MyString",
      :gender => "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => members_path(@member), :method => "post" do
      assert_select "input#member_firstname", :name => "member[firstname]"
      assert_select "input#member_lastname", :name => "member[lastname]"
      assert_select "input#member_age", :name => "member[age]"
      assert_select "input#member_location", :name => "member[location]"
      assert_select "input#member_nationalid", :name => "member[nationalid]"
      assert_select "input#member_gender", :name => "member[gender]"
    end
  end
end
