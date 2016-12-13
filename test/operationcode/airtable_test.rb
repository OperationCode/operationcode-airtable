require 'test_helper'

class Operationcode::AirtableTest < Minitest::Test
  def setup
    @airtable_opts = { base_id: '1234', table: 'test_table' }
    ENV['AIRTABLE_API_KEY'] = 'testkey'
  end

  def test_that_it_has_a_version_number
    refute_nil ::Operationcode::Airtable::VERSION
  end

  def test_it_raises_if_no_API_key_is_found
    ENV['AIRTABLE_API_KEY'] = nil
    refute ENV['AIRTABLE_API_KEY']
    assert_raises(KeyError){ Operationcode::Airtable.new(@airtable_opts) }

    ENV['AIRTABLE_API_KEY'] = ''
    assert_equal ENV['AIRTABLE_API_KEY'], ''
    assert_raises(KeyError){ Operationcode::Airtable.new(@airtable_opts) }

    ENV['AIRTABLE_API_KEY'] = 'testkey'
    assert ENV['AIRTABLE_API_KEY']
    assert_kind_of Operationcode::Airtable, Operationcode::Airtable.new(@airtable_opts)
  end

  def test_it_lists_records
    ::Airtable::Table.any_instance.expects(:records)
    Operationcode::Airtable.new(@airtable_opts).all
  end

  def test_it_creates_records
    ::Airtable::Table.any_instance.expects(:create)
    Operationcode::Airtable.new(@airtable_opts).create({ col1: 'value 1', col2: 'value 2' })
  end
end
