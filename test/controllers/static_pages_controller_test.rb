require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Bolão do brasileirão 2017"
  end
  
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get ajuda" do
    get static_pages_ajuda_url
    assert_response :success
    assert_select "title", "Ajuda | #{@base_title}"
  end

  test "should get sobre" do
    get static_pages_sobre_url
    assert_response :success
    assert_select "title", "Sobre | #{@base_title}"
  end

end
