require 'test_helper'

class Spree::Admin::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get spree_admin_contacts_index_url
    assert_response :success
  end

end
