require 'spec_helper'

describe GameSystemsController do
  include Devise::TestHelpers
  render_views
  
  let!(:game_system) { Factory.create(:game_system) }
  
  before :each do
    @user = Factory.create(:user)
    sign_in @user
  end
  
  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end
  
  describe "show action" do
    it "should render show template" do
      get :show, :id => GameSystem.first
      response.should render_template(:show)
    end
  end

end
