require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :name => "Name",
        :pirate_name => "Pirate Name",
        :email => "Email"
      ),
      stub_model(Person,
        :name => "Name",
        :pirate_name => "Pirate Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pirate Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
