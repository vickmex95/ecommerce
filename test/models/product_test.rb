# == Schema Information
#
# Table name: products
#
#  id            :integer          not null, primary key
#  p_name        :string
#  p_description :text
#  p_price       :float
#  p_quantity    :integer
#  p_shipping    :float
#  p_available   :boolean
#  user_id       :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
