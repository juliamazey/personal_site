require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_it_can_indicate_error_when_page_does_not_exist

    visit '//'
    assert_equal 404, page.status_code
    assert page.has_content?("Page doesn't exist")
  end
end
