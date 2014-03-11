require 'test_helper'

class UserTest < ActiveSupport::TestCase
test " User should enter his first name " do


user=User.new

assert !user.save
assert !user.errors[:first_name].empty?

end
test " User should enter his last name " do


user=User.new

assert !user.save
assert !user.errors[:last_name].empty?
end
test " User should enter his profile name " do


user=User.new

assert !user.save
assert !user.errors[:profile_name].empty?

end

test "profile name should be unique" do

	
user=User.new
    user.profile_name= users(:adel).profile_name
	assert !user.save
	assert !user.errors[:profile_name].empty?

	end
test "profile name should not have space" do

	
user=User.new
    user.profile_name= "My profile name has space"
	assert !user.save
	assert !user.errors[:profile_name].empty?
    assert user.errors[:profile_name].include?("Must be formatted correctly")


end
end
