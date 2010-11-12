require File.expand_path('../../test_helper.rb', __FILE__)

module CryptoProviderTest
  class AES256Test < ActiveSupport::TestCase
    def test_encrypt
      assert Authlogic::CryptoProviders::AES256.encrypt("mypass")
    end
    
    def test_matches
      hash = Authlogic::CryptoProviders::AES256.encrypt("mypass")
      assert Authlogic::CryptoProviders::AES256.matches?(hash, "mypass")
    end
  end
end