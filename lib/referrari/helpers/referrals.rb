require 'action_view'
require 'action_view/context'

module Referrari
  module Helpers
    class Referrals
      # so that this instance can actually "render"
      include ::ActionView::Context

      def initialize(template, options)
        @template, @options = template, options
        @output_buffer = ActionView::OutputBuffer.new
      end

      # render given block as a view template
      def render_box(&block)
        @output_buffer
      end

      def to_s
        "<div>Some content</div>"
      end
    end
  end
end
