require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get welcome" do
    get :welcome
    assert_response :success
  end

  test "should get viewTicket" do
    get :viewTicket
    assert_response :success
  end

  test "should get createTicket" do
    get :createTicket
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

end
