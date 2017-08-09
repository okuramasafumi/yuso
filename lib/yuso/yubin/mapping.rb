require "json"

module Yuso
  class Yubin
    class Mapping
      def self.load
        mapping_path = Yuso::DATA_PATH + "/yubin/mapping.json"
        JSON.load(File.read(mapping_path))
      end

      def self.areas
        load.values.uniq
      end
    end
  end
end
