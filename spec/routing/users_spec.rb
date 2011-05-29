require 'spec_helper'

describe "routing to users" do
  it "routes /users/:id to users#show for id" do
    { :get => "/users/42" }.should route_to(:controller => "users", :action => "show", :id => "42")
  end
  it "should not expose all users" do
    { :get => "/users" }.should_not be_routable
  end
end

