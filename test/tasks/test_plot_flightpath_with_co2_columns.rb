require File.dirname(__FILE__) + '/../test_helper.rb'

class TestPlotFlightpathWithCo2Columns < Test::Unit::TestCase
  def setup
    get_db_conn(GTRON_ENV)
    @rake = Rake::Application.new
    Rake.application = @rake
    load File.dirname(__FILE__) + '/../../tasks/plot_flightpath_with_co2_columns.rake'
  end

  should "be true" do
    # Testing rake is a bit different
    # http://blog.nicksieger.com/articles/2007/06/11/test-your-rake-tasks
    # Example:
    #   @rake["task_name"].invoke
    assert true
  end

  def teardown
    Rake.application = nil
  end
end
