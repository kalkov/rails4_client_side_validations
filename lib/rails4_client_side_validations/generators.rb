module Rails4ClientSideValidations
  module Generators
    Assets = []

    def self.register_assets(klass)
      Assets.push(*klass.assets)
    end
  end
end

require 'rails4_client_side_validations/generators/rails_validations'

