require 'rails/generators/test_case'
require 'rails4_client_side_validations'
require 'generators/rails4_client_side_validations/copy_assets_generator'
require 'generators/rails4_client_side_validations/install_generator'

class InstallGeneratorTest < Rails::Generators::TestCase
  tests Rails4ClientSideValidations::Generators::InstallGenerator
  destination File.expand_path('../../tmp', __FILE__)
  setup :prepare_destination

  test 'Assert all files are properly created when no asset pipeline present' do
    stub_configuration
    run_generator
    assert_file 'config/initializers/rails4_client_side_validations.rb'
    assert_file 'public/javascripts/rails.validations.js'
  end

  test 'Assert all files are properly created when asset pipeline present and disabled' do
    stub_configuration
    configuration = {:enabled => false}
    configuration.stubs(:prefix).returns('/assets')
    Rails.configuration.stubs(:assets).returns(configuration)
    run_generator
    assert_file 'config/initializers/rails4_client_side_validations.rb'
    assert_file 'public/javascripts/rails.validations.js'
  end

  test 'Assert all files are properly created when asset pipeline present and enabled' do
    stub_configuration
    configuration = {:enabled => true}
    configuration.stubs(:prefix).returns('/assets')
    Rails.configuration.stubs(:assets).returns(configuration)
    run_generator
    assert_file    'config/initializers/rails4_client_side_validations.rb'
    assert_no_file 'app/assets/javascripts/rails.validations.js'
  end

  def stub_configuration
    Rails.stubs(:configuration).returns(mock('Configuration'))
  end
end

class CopyAssetsGeneratorTest < Rails::Generators::TestCase
  tests Rails4ClientSideValidations::Generators::CopyAssetsGenerator
  destination File.expand_path('../../tmp', __FILE__)
  setup :prepare_destination

  test 'Assert file is properly created when no asset pipeline present' do
    stub_configuration
    run_generator
    assert_file 'public/javascripts/rails.validations.js'
  end

  test 'Assert file is properly created when asset pipeline present and disabled' do
    stub_configuration
    configuration = {:enabled => false}
    configuration.stubs(:prefix).returns('/assets')
    Rails.configuration.stubs(:assets).returns(configuration)
    run_generator
    assert_file 'public/javascripts/rails.validations.js'
  end

  test 'Assert file is properly created when asset pipeline present and enabled' do
    stub_configuration
    configuration = {:enabled => true}
    configuration.stubs(:prefix).returns('/assets')
    Rails.configuration.stubs(:assets).returns(configuration)
    run_generator
    assert_file 'app/assets/javascripts/rails.validations.js'
  end

  def stub_configuration
    Rails.stubs(:configuration).returns(mock('Configuration'))
  end
end

