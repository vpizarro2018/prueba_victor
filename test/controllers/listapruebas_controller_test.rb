require 'test_helper'

class ListapruebasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listaprueba = listapruebas(:one)
  end

  test "should get index" do
    get listapruebas_url
    assert_response :success
  end

  test "should get new" do
    get new_listaprueba_url
    assert_response :success
  end

  test "should create listaprueba" do
    assert_difference('Listaprueba.count') do
      post listapruebas_url, params: { listaprueba: { desde: @listaprueba.desde, estado: @listaprueba.estado, hasta: @listaprueba.hasta, nombre: @listaprueba.nombre, responsable: @listaprueba.responsable } }
    end

    assert_redirected_to listaprueba_url(Listaprueba.last)
  end

  test "should show listaprueba" do
    get listaprueba_url(@listaprueba)
    assert_response :success
  end

  test "should get edit" do
    get edit_listaprueba_url(@listaprueba)
    assert_response :success
  end

  test "should update listaprueba" do
    patch listaprueba_url(@listaprueba), params: { listaprueba: { desde: @listaprueba.desde, estado: @listaprueba.estado, hasta: @listaprueba.hasta, nombre: @listaprueba.nombre, responsable: @listaprueba.responsable } }
    assert_redirected_to listaprueba_url(@listaprueba)
  end

  test "should destroy listaprueba" do
    assert_difference('Listaprueba.count', -1) do
      delete listaprueba_url(@listaprueba)
    end

    assert_redirected_to listapruebas_url
  end
end
