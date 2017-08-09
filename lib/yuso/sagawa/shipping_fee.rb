require "json"
require_relative "./mapping"

module Yuso
  class Sagawa
    class ShippingFee
      def self.load(prefecture_name)
        area = mapping.fetch(prefecture_name) { raise ArgumentError, 'Prefecture name is not correct.' }
        json_path = Yuso::DATA_PATH + "/sagawa/#{area}.json"
        JSON.load(File.read(json_path))
      end

      private

      def self.mapping
        Mapping.load
      end
    end
  end
end
