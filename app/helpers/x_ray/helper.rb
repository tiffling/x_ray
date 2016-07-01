module XRay
  module Helper
    def x_ray(&block)
      render(layout: 'layouts/x_ray/scan', &block)
    end

    def x_ray_erb(code)
      render(partial: 'layouts/x_ray/erb_scan', locals: { code: code })
    end

    def x_ray_erb_insert_with_block(method, *params, &block)
      example = send(method, *params, &block)
      render(partial: 'layouts/x_ray/erb_insert_with_block_scan', locals: { example: example,method: method, params: params, block: block })
    end

    def x_ray_manual(code, &example_block)
      render(partial: 'layouts/x_ray/manual_scan', locals: { example_block: example_block, code: code })
    end

    def x_ray_output_code(code)
      text = <<-HTML.strip_heredoc
        #{code}
      HTML

      text.strip
    end
  end
end
