require 'test_helper'

class MontadorasControllerTest < ActionController::TestCase
  setup do
    @montadora = montadoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:montadoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create montadora" do
    assert_difference('Montadora.count') do
      post :create, montadora: { descricao: @montadora.descricao, imagem: @montadora.imagem, nome: @montadora.nome, site_url: @montadora.site_url }
    end

    assert_redirected_to montadora_path(assigns(:montadora))
  end

  test "should show montadora" do
    get :show, id: @montadora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @montadora
    assert_response :success
  end

  test "should update montadora" do
    put :update, id: @montadora, montadora: { descricao: @montadora.descricao, imagem: @montadora.imagem, nome: @montadora.nome, site_url: @montadora.site_url }
    assert_redirected_to montadora_path(assigns(:montadora))
  end

  test "should destroy montadora" do
    assert_difference('Montadora.count', -1) do
      delete :destroy, id: @montadora
    end

    assert_redirected_to montadoras_path
  end
end
