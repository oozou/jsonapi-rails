module JSONAPI
  module Rails
    class SerializableClassMapping < Hash
      def initialize(default_mappings = {}, &block)
        super() do |hash, class_name_sym|
          hash[class_name_sym] = yield(class_name_sym.to_s).safe_constantize
        end
      end
    end
  end
end
