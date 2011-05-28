#require File.dirname(__FILE__) + '/../spec_helper'
require 'spec_helper'

describe ArmyListsController do
  include Devise::TestHelpers
  render_views
  
  let!(:fow_army_list) { Factory.create(:flames_of_war_army_list) }

  before do
    @user = Factory.create(:user)
    sign_in @user
  end
  
  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => ArmyList.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    ArmyList.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  # it "create action should redirect when model is valid" do
  #     ArmyList.any_instance.stubs(:valid?).returns(true)
  #     post :create
  #     response.should redirect_to(army_list_url(assigns[:army_list]))
  #   end

  it "edit action should render edit template" do
    get :edit, :id => ArmyList.first
    response.should render_template(:edit)
  end

  # it "update action should render edit template when model is invalid" do
  #     ArmyList.any_instance.stubs(:valid?).returns(false)
  #     put :update, :id => ArmyList.first
  #     response.should render_template(:edit)
  #   end

  it "update action should redirect when model is valid" do
    ArmyList.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ArmyList.first
    response.should redirect_to(army_list_url(assigns[:army_list]))
  end

  it "destroy action should destroy model and redirect to index action" do
    army_list = ArmyList.first
    delete :destroy, :id => army_list
    response.should redirect_to(army_lists_url)
    ArmyList.exists?(army_list.id).should be_false
  end
end
