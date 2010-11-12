require File.expand_path('../../test_helper.rb', __FILE__)

class LintTest < ActiveModel::TestCase
  include ActiveModel::Lint::Tests
 
  def setup
    @model = UserSession.new
  end
end