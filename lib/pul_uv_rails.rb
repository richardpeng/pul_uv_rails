require 'pul_uv_rails/version'
require 'pul_uv_rails/universal_viewer'

module PulUvRails
  class Engine < ::Rails::Engine
    initializer 'static assets' do |app|
      app.middleware.insert_before(::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public")
    end
  end
end
