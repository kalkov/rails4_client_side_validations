module Rails4ClientSideValidations::ActionView
  module Helpers
  end
end

require 'rails4_client_side_validations/core_ext'
require 'rails4_client_side_validations/action_view/form_helper'
require 'rails4_client_side_validations/action_view/form_tag_helper'
require 'rails4_client_side_validations/action_view/form_builder'

ActionView::Base.send(:include, Rails4ClientSideValidations::ActionView::Helpers::FormHelper)
ActionView::Base.send(:include, Rails4ClientSideValidations::ActionView::Helpers::FormTagHelper)
ActionView::Helpers::FormBuilder.send(:include, Rails4ClientSideValidations::ActionView::Helpers::FormBuilder)

