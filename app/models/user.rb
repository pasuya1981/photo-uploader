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

class User < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader
  validates_presence_of :name, :email
  validates_format_of :email, with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
end
