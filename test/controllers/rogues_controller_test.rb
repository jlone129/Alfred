require "test_helper"

class RoguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rogue = rogues(:one)
  end

  test "should get index" do
    get rogues_url
    assert_response :success
  end

  test "should get new" do
    get new_rogue_url
    assert_response :success
  end

  test "should create rogue" do
    assert_difference('Rogue.count') do
      post rogues_url, params: { rogue: { attack: @rogue.attack, health: @rogue.health, location: @rogue.location, name: @rogue.name, spc_atk: @rogue.spc_atk, special: @rogue.special } }
    end

    assert_redirected_to rogue_url(Rogue.last)
  end

  test "should show rogue" do
    get rogue_url(@rogue)
    assert_response :success
  end

  test "should get edit" do
    get edit_rogue_url(@rogue)
    assert_response :success
  end

  test "should update rogue" do
    patch rogue_url(@rogue), params: { rogue: { attack: @rogue.attack, health: @rogue.health, location: @rogue.location, name: @rogue.name, spc_atk: @rogue.spc_atk, special: @rogue.special } }
    assert_redirected_to rogue_url(@rogue)
  end

  test "should destroy rogue" do
    assert_difference('Rogue.count', -1) do
      delete rogue_url(@rogue)
    end

    assert_redirected_to rogues_url
  end
end
