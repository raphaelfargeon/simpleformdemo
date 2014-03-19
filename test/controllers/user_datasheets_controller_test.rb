# -*- encoding : utf-8 -*-
require 'test_helper'

class UserDatasheetsControllerTest < ActionController::TestCase
  setup do
    @user_datasheet = user_datasheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_datasheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_datasheet" do
    assert_difference('UserDatasheet.count') do
      post :create, user_datasheet: { birthdate: @user_datasheet.birthdate, firstname: @user_datasheet.firstname, lastname: @user_datasheet.lastname, mobile: @user_datasheet.mobile, nickname: @user_datasheet.nickname, phone: @user_datasheet.phone, title: @user_datasheet.title }
    end

    assert_redirected_to user_datasheet_path(assigns(:user_datasheet))
  end

  test "should show user_datasheet" do
    get :show, id: @user_datasheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_datasheet
    assert_response :success
  end

  test "should update user_datasheet" do
    patch :update, id: @user_datasheet, user_datasheet: { birthdate: @user_datasheet.birthdate, firstname: @user_datasheet.firstname, lastname: @user_datasheet.lastname, mobile: @user_datasheet.mobile, nickname: @user_datasheet.nickname, phone: @user_datasheet.phone, title: @user_datasheet.title }
    assert_redirected_to user_datasheet_path(assigns(:user_datasheet))
  end

  test "should destroy user_datasheet" do
    assert_difference('UserDatasheet.count', -1) do
      delete :destroy, id: @user_datasheet
    end

    assert_redirected_to user_datasheets_path
  end
end
