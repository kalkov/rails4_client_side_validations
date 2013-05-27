module Rails4ClientSideValidations
  class Engine < ::Rails::Engine
    config.app_middleware.use Rails4ClientSideValidations::Middleware::Validators
  end
end

