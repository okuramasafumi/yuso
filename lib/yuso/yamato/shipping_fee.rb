require "json"

module Yuso
  class Yamato
    class ShippingFee
      def self.load(prefecture_name)
        mapping_path = Yuso::DATA_PATH + "/yamato/mapping.json"
        mapping = JSON.load(File.read(mapping_path))
        area = mapping.fetch(prefecture_name) { raise ArgumentError, 'Prefecture name is not correct.' }
        json_path = Yuso::DATA_PATH + "/yamato/#{area}.json"
        JSON.load(File.read(json_path))
      end
    end
  end
end
