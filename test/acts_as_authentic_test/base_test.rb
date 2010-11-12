require File.expand_path('../../test_helper.rb', __FILE__)

module ActsAsAuthenticTest
  class BaseTest < ActiveSupport::TestCase
    def test_acts_as_authentic
      assert_nothing_raised do
        User.acts_as_authentic do
        end
      end
    end
    
    def test_acts_as_authentic_with_old_config
      assert_raise(ArgumentError) do
        User.acts_as_authentic({})
      end
    end
  end
end