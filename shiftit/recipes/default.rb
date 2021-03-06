application 'ShiftIt' do
  source 'http://cloud.github.com/downloads/fikovnik/ShiftIt/ShiftIt-1.5.zip'
end

# Enable assistive device access
file "/private/var/db/.AccessibilityAPIEnabled" do
  action :create_if_missing
  content "a"
  mode "0444"
end

execute "Start ShiftIt on login" do
  command "defaults write loginwindow AutoLaunchedApplicationDictionary -array-add '{ \"Path\" = \"/Applications/ShiftIt.app\"; \"Hide\" = 0; }'"
  user ENV['SUDO_USER'] || ENV['USER']
end
