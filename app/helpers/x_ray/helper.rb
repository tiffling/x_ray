module XRay
  module Helper
    def x_ray(&block)
      render(layout: 'layouts/x_ray/scan', &block)
    end

    def x_ray_erb(&block)
      render(layout: 'layouts/x_ray/erb_scan', &block)
    end

    def x_ray_erb_render(context, options={}, &block)
      render(partial: 'layouts/x_ray/erb_render_scan', locals: { context: context, options: options, block: block})
    end

    def x_ray_erb_render_code(context, options, raw_block)
      code = if raw_block
        "<%= render #{context}, #{options} do %>\n#{x_ray_scan(raw_block)}\n<% end %>"
      else
        "<%= render #{context}, #{options} %>"
      end

      x_ray_scan(code)
    end

    def x_ray_scan(code)
      text = <<-HTML.strip_heredoc
        #{code}
      HTML

      text.strip
    end
  end
end
