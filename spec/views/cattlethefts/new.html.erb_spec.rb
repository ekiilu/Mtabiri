require 'spec_helper'

describe "cattlethefts/new" do
  before(:each) do
    assign(:cattletheft, stub_model(Cattletheft,
      :numberstolen => 1,
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new cattletheft form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cattlethefts_path, :method => "post" do
      assert_select "input#cattletheft_numberstolen", :name => "cattletheft[numberstolen]"
      assert_select "input#cattletheft_location", :name => "cattletheft[location]"
    end
  end
end
