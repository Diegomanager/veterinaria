require "test_helper"

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal = animals(:one)
  end

  test "should get index" do
    get animals_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_url
    assert_response :success
  end

  test "should create animal" do
    assert_difference("Animal.count") do
      post animals_url, params: { animal: { Animal: @animal.Animal, date_of_birth: @animal.date_of_birth, escape_attempts: @animal.escape_attempts, generate: @animal.generate, model: @animal.model, name: @animal.name, neutered: @animal.neutered, rails: @animal.rails, weight_kg: @animal.weight_kg } }
    end

    assert_redirected_to animal_url(Animal.last)
  end

  test "should show animal" do
    get animal_url(@animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_url(@animal)
    assert_response :success
  end

  test "should update animal" do
    patch animal_url(@animal), params: { animal: { Animal: @animal.Animal, date_of_birth: @animal.date_of_birth, escape_attempts: @animal.escape_attempts, generate: @animal.generate, model: @animal.model, name: @animal.name, neutered: @animal.neutered, rails: @animal.rails, weight_kg: @animal.weight_kg } }
    assert_redirected_to animal_url(@animal)
  end

  test "should destroy animal" do
    assert_difference("Animal.count", -1) do
      delete animal_url(@animal)
    end

    assert_redirected_to animals_url
  end
end
