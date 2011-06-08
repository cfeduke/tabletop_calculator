require 'spec_helper'

describe "routing to factions" do
  it "routes /factions to factions#index" do
    { :get => '/factions' }.should route_to(:controller => 'factions', :action => 'index')
  end
  it "routes /factions/:name to factions#show" do
    { :get => '/factions/germans' }.should route_to(:controller => 'factions', :action => 'show', :name => 'germans')
  end
  
end