module XRay
  class Engine < Rails::Engine
    isolate_namespace XRay
  end
end
