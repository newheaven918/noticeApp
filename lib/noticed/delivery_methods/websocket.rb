module Noticed
  module DeliveryMethods
    class Websocket < Base
      def deliver
        websocket_channel.broadcast_to recipient, format_for_websocket
      end

      def format_for_websocket
        params
      end

      def websocket_channel
        Noticed::NotificationChannel
      end
    end
  end
end
