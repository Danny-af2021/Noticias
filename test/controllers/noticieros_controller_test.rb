require "test_helper"

class NoticierosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @noticiero = noticieros(:one)
  end

  test "should get index" do
    get noticieros_url, as: :json
    assert_response :success
  end

  test "should create noticiero" do
    assert_difference("Noticiero.count") do
      post noticieros_url, params: { noticiero: { category: @noticiero.category, content: @noticiero.content, image: @noticiero.image, title: @noticiero.title } }, as: :json
    end

    assert_response :created
  end

  test "should show noticiero" do
    get noticiero_url(@noticiero), as: :json
    assert_response :success
  end

  test "should update noticiero" do
    patch noticiero_url(@noticiero), params: { noticiero: { category: @noticiero.category, content: @noticiero.content, image: @noticiero.image, title: @noticiero.title } }, as: :json
    assert_response :success
  end

  test "should destroy noticiero" do
    assert_difference("Noticiero.count", -1) do
      delete noticiero_url(@noticiero), as: :json
    end

    assert_response :no_content
  end
end
