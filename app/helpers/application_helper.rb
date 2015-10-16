module ApplicationHelper
  def controller_js_include_tag
    javascript_include_tag controller_name if File.exists?("#{Rails.root}/app/assets/javascripts/#{controller_name}.coffee")
  end

  def action_js_include_tag
    js_file = "#{controller_name}-#{action_name}"
    javascript_include_tag js_file if File.exists?("#{Rails.root}/app/assets/javascripts/#{js_file}.coffee")
  end

  def controller_css_include_tag
    stylesheet_link_tag controller_name if Dir.glob("#{Rails.root}/app/assets/stylesheets/#{controller_name}.*css*").one?
  end

  def action_css_include_tag
    css_file = "#{controller_name}-#{action_name}"
    stylesheet_link_tag css_file if Dir.glob("#{Rails.root}/app/assets/stylesheets/#{css_file}.*css*").one?
  end
end
