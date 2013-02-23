require 'spec_helper'

describe "members/show" do
  before(:each) do
    @member = assign(:member, stub_model(Member,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :age => "",
      :location => "",
      :nationalid => "Nationalid",
      :gender => "Gender"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Nationalid/)
    rendered.should match(/Gender/)
  end
end
