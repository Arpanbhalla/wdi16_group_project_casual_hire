# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :text
#  admin           :boolean          default(FALSE)
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  role            :integer
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
