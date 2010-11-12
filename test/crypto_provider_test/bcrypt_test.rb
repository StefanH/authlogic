require File.expand_path('../../test_helper.rb', __FILE__)

module CryptoProviderTest
  class BCrpytTest < ActiveSupport::TestCase
    def test_encrypt
      assert Authlogic::CryptoProviders::BCrypt.encrypt("mypass")
    end
    
    def test_matches
      hash = Authlogic::CryptoProviders::BCrypt.encrypt("mypass")
      assert Authlogic::CryptoProviders::BCrypt.matches?(hash, "mypass")
    end
  end
end