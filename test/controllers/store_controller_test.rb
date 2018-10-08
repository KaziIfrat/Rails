require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url


    assert_response :success , "pppp"


    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 4
    assert_select 'h3', 'MyString1'
    byebug
   assert_select '.price', /\$[,\d]+\.\d\d/

   end

end
