require_relative '../../lib/parliamentarians/requester'
require_relative '../../bin/settings'
require 'test/unit'

module TestParliamentarians
  class TestParliamentariansRequester < Test::Unit::TestCase
    def test_get_json_raw
      # Setup
      req = Parliamentarians::Requester.new(PARLIAMENTARIANS_URL)

      # Act
      body = req.get_json_raw

      # Assertion
      assert_not_nil(body)
      assert_equal(81, req.length)
    end
  end
end