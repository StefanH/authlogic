require File.expand_path('../../test_helper.rb', __FILE__)

module SessionTest
  class UnauthorizedRecordTest < ActiveSupport::TestCase
    def test_credentials
      ben = users(:ben)
      session = UserSession.new
      session.credentials = [ben]
      assert_equal ben, session.unauthorized_record
      assert_equal({:unauthorized_record => "<protected>"}, session.credentials)
    end
  end
end