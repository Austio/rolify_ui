require 'test_helper'

module RolifyUi
  class RoleAssignerTest < ActiveSupport::TestCase
    test "initializes with" do
      u = User.create
      r = RolifyUi::RoleAssigner.new(u, :rolified_classes)

      assert_equal true, r
    end
  end
end
