require 'daybreak'
require 'forwardable'
require 'msgpack'

module Daybreak
  module Serializer
    class MsgPack < Default
      extend Forwardable

      delegate %i(dump load) => :MessagePack
    end
  end
end
