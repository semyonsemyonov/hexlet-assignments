# frozen_string_literal: true

require 'test_helper'

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bulletin = bulletins(:one, :two)
  end

  test 'should get index' do
    get bulletins_url
    p response
    assert_response :success
  end

  test 'should show bulletin' do
    get bulletin_url(@bulletin)
    assert_response :success
  end
end