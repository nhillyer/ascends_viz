require 'rubygems'
require 'test/unit'

require 'gigantron/migrator'
require File.dirname(__FILE__) + '/../initialize'
silence_warnings { GTRON_ENV = :test }
ENV['GTRON_ENV'] = 'test'
get_db_conn(GTRON_ENV)

require 'shoulda'
require 'shoulda/private_helpers'
require 'shoulda/general'
require 'shoulda/active_record_helpers'

module Test
  module Unit
    class TestCase
      include ThoughtBot::Shoulda::General
      extend ThoughtBot::Shoulda::ActiveRecord
    end
  end
end


