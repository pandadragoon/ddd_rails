require 'test_helper'
require 'generators/action/action_generator'

class ActionGeneratorTest < Rails::Generators::TestCase
  tests ActionGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
