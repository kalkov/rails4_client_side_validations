module Rails4ClientSideValidations
end

require 'rails4_client_side_validations/config'
require 'rails4_client_side_validations/active_model'  if defined?(::ActiveModel)
require 'rails4_client_side_validations/active_record' if defined?(::ActiveRecord)
require 'rails4_client_side_validations/action_view'   if defined?(::ActionView)
if defined?(::Rails)
  require 'rails4_client_side_validations/generators'
  require 'rails4_client_side_validations/middleware'
  require 'rails4_client_side_validations/engine'
end

