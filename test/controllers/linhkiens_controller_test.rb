require 'test_helper'

class LinhkiensControllerTest < ActionController::TestCase
  setup do
    @linhkien = linhkiens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:linhkiens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create linhkien" do
    assert_difference('Linhkien.count') do
      post :create, linhkien: { loai: @linhkien.loai, nhap: @linhkien.nhap, price: @linhkien.price, ten: @linhkien.ten, toncuoi: @linhkien.toncuoi, tondau: @linhkien.tondau, xuat: @linhkien.xuat }
    end

    assert_redirected_to linhkien_path(assigns(:linhkien))
  end

  test "should show linhkien" do
    get :show, id: @linhkien
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @linhkien
    assert_response :success
  end

  test "should update linhkien" do
    patch :update, id: @linhkien, linhkien: { loai: @linhkien.loai, nhap: @linhkien.nhap, price: @linhkien.price, ten: @linhkien.ten, toncuoi: @linhkien.toncuoi, tondau: @linhkien.tondau, xuat: @linhkien.xuat }
    assert_redirected_to linhkien_path(assigns(:linhkien))
  end

  test "should destroy linhkien" do
    assert_difference('Linhkien.count', -1) do
      delete :destroy, id: @linhkien
    end

    assert_redirected_to linhkiens_path
  end
end
