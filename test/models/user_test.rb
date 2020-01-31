# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  name                   :string
#  last_name              :string
#  age                    :integer
#  img_file_name          :string
#  img_content_type       :string
#  img_file_size          :integer
#  img_updated_at         :datetime
#  state                  :string
#  city                   :string
#  street                 :string
#  uuid                   :string
#  provider               :string
#  permission_level       :integer          default(0)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
