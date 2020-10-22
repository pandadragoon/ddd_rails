require 'test_helper'
require 'generators/repository/repository_generator'

class RepositoryGeneratorTest < Rails::Generators::TestCase
  tests RepositoryGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
