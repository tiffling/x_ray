module XRay
  module Helper
    def x_ray(&block)
      render(layout: 'layouts/x_ray/scan', &block)
    end

    def x_ray_scan(&block)
      text = <<-HTML.strip_heredoc
        #{Simplabs::Highlight.highlight(:erb, yield)}
      HTML
      sanitize(text.strip).html_safe
    end
  end
end
