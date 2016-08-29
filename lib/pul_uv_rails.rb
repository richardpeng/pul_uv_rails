require "pul_uv_rails/version"

module PulUvRails
  initializer "static assets" do |app|
    app.middleware.insert_before(::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public")
  end
end
