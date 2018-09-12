require "application_system_test_case"

class ListapruebasTest < ApplicationSystemTestCase
  setup do
    @listaprueba = listapruebas(:one)
  end

  test "visiting the index" do
    visit listapruebas_url
    assert_selector "h1", text: "Listapruebas"
  end

  test "creating a Listaprueba" do
    visit listapruebas_url
    click_on "New Listaprueba"

    fill_in "Desde", with: @listaprueba.desde
    fill_in "Estado", with: @listaprueba.estado
    fill_in "Hasta", with: @listaprueba.hasta
    fill_in "Nombre", with: @listaprueba.nombre
    fill_in "Responsable", with: @listaprueba.responsable
    click_on "Create Listaprueba"

    assert_text "Listaprueba was successfully created"
    click_on "Back"
  end

  test "updating a Listaprueba" do
    visit listapruebas_url
    click_on "Edit", match: :first

    fill_in "Desde", with: @listaprueba.desde
    fill_in "Estado", with: @listaprueba.estado
    fill_in "Hasta", with: @listaprueba.hasta
    fill_in "Nombre", with: @listaprueba.nombre
    fill_in "Responsable", with: @listaprueba.responsable
    click_on "Update Listaprueba"

    assert_text "Listaprueba was successfully updated"
    click_on "Back"
  end

  test "destroying a Listaprueba" do
    visit listapruebas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listaprueba was successfully destroyed"
  end
end
