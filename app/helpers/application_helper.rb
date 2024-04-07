module ApplicationHelper
  def displayed_svg(file_name, options={})
    file = File.read(Rails.root.join('app', 'assets', 'images', file_name))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    if options[:class].present?
      svg['class'] = options[:class]
    end
    doc.to_html.html_safe
  end
  
  def class_color(element)
    elements = { 地: "text-warning", 水: "text-primary", 火: "text-danger", 風: "text-success" }
    # binding.pry
    elements[:"#{element}"]
  end
end