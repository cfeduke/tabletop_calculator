require 'spec_helper'

describe "routing to factions" do
  it "routes /factions/germans to factions#show" do
    { :get => '/factions/germans' }.should route_to(:controller => 'factions', :action => 'show', :id => 'germans')
  end
  
end