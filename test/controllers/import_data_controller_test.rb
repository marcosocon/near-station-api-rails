require 'test_helper'

class ImportDataControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get import_data_create_url
    assert_response :success
  end

end
