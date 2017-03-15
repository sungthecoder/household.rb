# spec/support/request_helpers.rb
require 'ostruct'

module Requests
  module JsonHelpers
    def json
      JSON.parse(response.body)
    end

    def jsono
      OpenStruct.new(json)
    end
  end
end
