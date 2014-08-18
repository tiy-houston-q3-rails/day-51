require 'test_helper'

class NicePeopleControllerTest < ActionController::TestCase
  setup do
    @nice_person = nice_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nice_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nice_person" do
    assert_difference('NicePerson.count') do
      post :create, nice_person: { age: @nice_person.age, city: @nice_person.city, hair: @nice_person.hair, name: @nice_person.name }
    end

    assert_redirected_to nice_person_path(assigns(:nice_person))
  end

  test "should show nice_person" do
    get :show, id: @nice_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nice_person
    assert_response :success
  end

  test "should update nice_person" do
    patch :update, id: @nice_person, nice_person: { age: @nice_person.age, city: @nice_person.city, hair: @nice_person.hair, name: @nice_person.name }
    assert_redirected_to nice_person_path(assigns(:nice_person))
  end

  test "should destroy nice_person" do
    assert_difference('NicePerson.count', -1) do
      delete :destroy, id: @nice_person
    end

    assert_redirected_to nice_people_path
  end
end
