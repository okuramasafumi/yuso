require "json"

module Yuso
  class Yamato
    class Mapping
      def self.load
        mapping_path = Yuso::DATA_PATH + "/yamato/mapping.json"
        JSON.load(File.read(mapping_path))
      end

      def self.areas
        load.values.uniq
      end
    end
  end
end
