require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  
  def setup
  	@relationship = Relationship.new(follower_id: users(:michael).id, folloed_id: users(:archer).id)
  end

  test "should be valid" do
	assert @relationship.valid?  	
  end

  test "should require a follwer id" do
  	@relationship.follower_id = nil
  	assert_not @relationship.valid?
  end

  test "should require a followed id" do
  	@relationship.folloed_id = nil
  	assert_not @relationship.valid?
  end
  
end
