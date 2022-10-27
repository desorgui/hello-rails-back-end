require 'test_helper'

class GrettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gretting = grettings(:one)
  end

  test 'should get index' do
    get grettings_url, as: :json
    assert_response :success
  end

  test 'should create gretting' do
    assert_difference('Gretting.count') do
      post grettings_url, params: { gretting: { author: @gretting.author, message: @gretting.message } }, as: :json
    end

    assert_response :created
  end

  test 'should show gretting' do
    get gretting_url(@gretting), as: :json
    assert_response :success
  end

  test 'should update gretting' do
    patch gretting_url(@gretting), params: { gretting: { author: @gretting.author, message: @gretting.message } },
                                   as: :json
    assert_response :success
  end

  test 'should destroy gretting' do
    assert_difference('Gretting.count', -1) do
      delete gretting_url(@gretting), as: :json
    end

    assert_response :no_content
  end
end
