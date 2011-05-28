describe "army_list/show.html.haml" do
  include Devise::TestHelpers
  
  before :each do
    @user = Factory.create(:user)
    sign_in @user
  end
  
  it "should show the user's display name" do
    Factory.create(:army_list)
    get :show, :id => ArmyList.last
    response.should have_tag("a", :text => @user.display_name)
  end
end