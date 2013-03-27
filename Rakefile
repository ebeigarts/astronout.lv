task :default do
  require 'yaml'
  require 'liquid'

  views = {}
  Dir["*.yml"].each do |path|
    views.merge!(YAML.load_file(path))
  end

  views.each do |locale, view|
    view["locale"] = locale
    template = Liquid::Template.parse(File.read("template.html"))
    result = template.render(view)
    File.open("#{locale}.html", "wb") do |f|
      f.write result
    end
  end
end
