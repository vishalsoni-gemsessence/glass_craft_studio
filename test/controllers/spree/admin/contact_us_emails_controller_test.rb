require 'test_helper'

class Spree::Admin::ContactUsEmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spree_admin_contact_us_emails_index_url
    assert_response :success
  end

end
