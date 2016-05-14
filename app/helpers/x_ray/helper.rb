module XRay
  module Helper
    def x_ray(&block)
      render(layout: 'layouts/x_ray/scan', &block)
    end
  end
end
