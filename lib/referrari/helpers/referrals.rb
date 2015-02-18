require 'action_view'
require 'action_view/context'

module Referrari
  module Helpers
    class Referrals
      # so that this instance can actually "render"
      include ::ActionView::Context

      def initialize(options)
        @options = options
        @output_buffer = ActionView::OutputBuffer.new
      end

      # render given block as a view template
      def render_box(&block)
        @output_buffer
      end

      def to_s
        "Some content"
      end
    end
  end
end
