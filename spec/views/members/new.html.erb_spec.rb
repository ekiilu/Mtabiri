require 'spec_helper'

describe "members/new" do
  before(:each) do
    assign(:member, stub_model(Member,
      :firstname => "MyString",
      :lastname => "MyString",
      :age => "",
      :location => "",
      :nationalid => "MyString",
      :gender => "MyString"
    ).as_new_record)
  end

  it "renders new member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => members_path, :method => "post" do
      assert_select "input#member_firstname", :name => "member[firstname]"
      assert_select "input#member_lastname", :name => "member[lastname]"
      assert_select "input#member_age", :name => "member[age]"
      assert_select "input#member_location", :name => "member[location]"
      assert_select "input#member_nationalid", :name => "member[nationalid]"
      assert_select "input#member_gender", :name => "member[gender]"
    end
  end
end
