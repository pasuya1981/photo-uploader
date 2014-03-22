# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  avatar     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe User do

  describe "user attributes" do
  	let(:user) { User.create(name: 'Zack', email: 'example@example.com') }

  	it { user.should respond_to(:name) }
  	it { user.should respond_to(:email) }
  	it { user.name.should == 'Zack' }
  	it { user.email.should == 'example@example.com' }
  end
end
