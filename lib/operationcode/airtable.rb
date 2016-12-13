require 'airtable'
# The airtable gem uses HashWithIndifferentAccess but doesn't require activesupport
# It's currently fixed in master but the gem hasn't been updated so I'm requiring it
# here manually
require 'active_support/core_ext/hash'

module Operationcode
  class Airtable
    # Library for the Operation code Airtable service
    # https://github.com/Airtable/airtable-ruby
    # Airtable is where we store user information, contacts, and other various settings
    # for the Operation Code platform
    #
    # @param base_id [String] base_id for the airtable base. This can be found on the tables API page
    # @param table [String] the name of the airbase table
    # @return [OperationCode::Airtable]
    def initialize(base_id:, table:)
      api_key = ENV.fetch('AIRTABLE_API_KEY')
      raise(KeyError, 'AIRTABLE_API_KEY is blank') if api_key.delete(' ') == ''

      client = ::Airtable::Client.new(api_key)
      @table = client.table(base_id, table)
    end

    # Lists all records in the table
    # @return [Array]
    def all
      # FIXME this will only return the first 100 records
      # We should iterate until we actually retreive all records
      @table.records
    end

    # Creates a record in airtables
    #
    # @param record [Hash] A hash containing all, some, or none of the key/value pairs of columns in the table
    # @return [Airtable::Record] if successful, `false` if there was an error
    def create(record)
      record = ::Airtable::Record.new(record)
      @table.create record
    end
  end
end
