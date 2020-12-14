require "test_helper"

class AthletesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @athlete = athletes(:one)
  end

  test "should get index" do
    get athletes_url, as: :json
    assert_response :success
  end

  test "should create athlete" do
    assert_difference('Athlete.count') do
      post athletes_url, params: { athlete: { fur_color: @athlete.fur_color, image: @athlete.image, name: @athlete.name, partner: @athlete.partner, personality: @athlete.personality, team_id: @athlete.team_id } }, as: :json
    end

    assert_response 201
  end

  test "should show athlete" do
    get athlete_url(@athlete), as: :json
    assert_response :success
  end

  test "should update athlete" do
    patch athlete_url(@athlete), params: { athlete: { fur_color: @athlete.fur_color, image: @athlete.image, name: @athlete.name, partner: @athlete.partner, personality: @athlete.personality, team_id: @athlete.team_id } }, as: :json
    assert_response 200
  end

  test "should destroy athlete" do
    assert_difference('Athlete.count', -1) do
      delete athlete_url(@athlete), as: :json
    end

    assert_response 204
  end
end
