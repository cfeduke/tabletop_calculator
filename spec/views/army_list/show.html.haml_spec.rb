describe "army_lists/show.html.haml" do
  include Devise::TestHelpers
  
  before :each do
    @user = Factory.create(:user)
    sign_in @user
  end
  
  it "displays the author's display name" do
    pending
    assign(:army_list, 
      stub_model(ArmyList, 
        :user => User.new(:display_name => "John Smith")
      )
    )
    render
    render.should have_tag("a", :text => "John Smith")
  end
end