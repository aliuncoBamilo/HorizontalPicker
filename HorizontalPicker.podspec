Pod::Spec.new do |s|
  s.name             = "HorizontalPicker-Bamilo"
  s.version          = "1.0"
  s.summary          = "A similar to UIPickerView but horizontal picker view."
  s.description      = <<-DESC
  A horizontal picker which adapts for different element width, occupying only the space needed.
  Datasource/Delegate as UIPickerView + support for tintColor, two text lines, font and text color.
                       DESC

  s.homepage         = "https://github.com/aliuncoBamilo/HorizontalPicker"
  s.license          = 'MIT'
  s.author           = { "RABE_IT Services" => "development@berndrabe.de" }
  s.source           = { :git => "git@github.com:aliuncoBamilo/HorizontalPicker.git", :tag => s.version.to_s }

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'HorizontalPicker/Classes/**/*'
end
