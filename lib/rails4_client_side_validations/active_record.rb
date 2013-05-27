require 'rails4_client_side_validations/active_model'
require 'rails4_client_side_validations/middleware'
require 'rails4_client_side_validations/active_record/middleware'

%w{uniqueness}.each do |validator|
  require "rails4_client_side_validations/active_record/#{validator}"
  validator.capitalize!
  eval "ActiveRecord::Validations::#{validator}Validator.send(:include, Rails4ClientSideValidations::ActiveRecord::#{validator})"
end

ActiveRecord::Base.send(:include, Rails4ClientSideValidations::ActiveModel::Validations)
Rails4ClientSideValidations::Middleware::Uniqueness.register_orm(Rails4ClientSideValidations::ActiveRecord::Middleware)
