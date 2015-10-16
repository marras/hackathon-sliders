require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sliders
  class Application < Rails::Application
    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    config.hamlcoffee.name_filter = lambda { |n| n.sub /^backbone\/templates\//, '' }

    css_assets = Dir.glob(File.join(config.root, 'app/assets/stylesheets/*')).map{ |p| File.basename(p).gsub(/(\.css)?\.s[a|c]ss$/, '.css') }
    js_assets = Dir.glob(File.join(config.root, 'app/assets/javascripts/*')).map{ |p| File.basename(p).gsub(/(\.js)?\.coffee(\.erb)?$/, '.js') }
    vendor_js = Dir.glob(File.join(config.root, 'vendor/assets/javascripts/*'))

    config.assets.precompile += (css_assets + js_assets + vendor_js)
  end
end
