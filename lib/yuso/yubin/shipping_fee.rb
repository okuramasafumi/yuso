require "json"

module Yuso
  class Yubin
    class ShippingFee
      def self.load(prefecture_name)
        mapping_path = Yuso::DATA_PATH + "/yubin/mapping.json"
        mapping = JSON.load(File.read(mapping_path))
        area = mapping.fetch(prefecture_name) { raise ArgumentError, 'Prefecture name is not correct.' }
        json_path = Yuso::DATA_PATH + "/yubin/#{area}.json"
        JSON.load(File.read(json_path))
      end
    end
  end
end
