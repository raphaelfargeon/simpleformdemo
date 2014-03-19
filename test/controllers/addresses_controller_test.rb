# -*- encoding : utf-8 -*-
require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { area: @address.area, building: @address.building, city: @address.city, company: @address.company, company_name: @address.company_name, country: @address.country, other_information: @address.other_information, postal_code: @address.postal_code, street: @address.street, street_number: @address.street_number }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    patch :update, id: @address, address: { area: @address.area, building: @address.building, city: @address.city, company: @address.company, company_name: @address.company_name, country: @address.country, other_information: @address.other_information, postal_code: @address.postal_code, street: @address.street, street_number: @address.street_number }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address
    end

    assert_redirected_to addresses_path
  end
end
