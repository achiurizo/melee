require File.expand_path('../acceptance_helper', __FILE__)
require File.expand_path('../../../lib/melee', __FILE__)

feature %Q{
In order to write better software
As a ruby developer
I want to execute acceptance tests in riot
} do

  scenario "Minimal acceptance test that passes should give an output that" do
    test_file = create_test <<-TEST
      require File.expand_path('../../lib/melee',__FILE__)
      feature "a minimal test" do
        scenario("a scenario") { true }
      end
    TEST
    run_test test_file
  end.matches %r{1 passes, 0 failures}

  scenario "Minimal acceptance test that fails should give an output that" do
    test_file = create_test <<-TEST
      require File.expand_path('../../lib/melee',__FILE__)
      feature "a minimal test" do
        scenario("a scenario") { false }
      end
    TEST
    run_test test_file
  end.matches %r{0 passes, 1 failures}
end


feature %{
In order for me to use melee
As a ruby developer and riot user
I need to be able to change some wording around
} do

  scenario "Minimal acceptance test with a background should give an output that" do
    test_file = create_test <<-TEST
      require File.expand_path('../../lib/melee',__FILE__)
      feature "a minimal test" do
        background { @acceptance = true }
        scenario("a scenario") { @acceptance }
      end
    TEST
    run_test test_file
  end.matches %r{1 passes, 0 failures}

  scenario "Minimal acceptance test with a given should give an output that" do
    test_file = create_test <<-TEST
      require File.expand_path('../../lib/melee',__FILE__)
      feature "a minimal test" do
        given(:a_acceptance) { true }
        scenario("a scenario") { a_acceptance }
      end
    TEST
    run_test test_file
  end.matches %r{1 passes, 0 failures}

end

