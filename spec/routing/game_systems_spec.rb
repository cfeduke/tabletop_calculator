require 'spec_helper'

describe "routing to game_systems" do
  it "routes /game_systems/1 to game_systems#show" do
    { :get => '/game_systems/1' }.should route_to(:controller => 'game_systems', :action => 'show', :id => "1")
  end
  it "routes /game_systems/ to game_systems#index" do
    { :get => '/game_systems/' }.should route_to(:controller => 'game_systems', :action => 'index')
  end
  it "doesn't route any destroy action" do
    { :put => '/game_systems/1/destroy' }.should raise_error
  end
end