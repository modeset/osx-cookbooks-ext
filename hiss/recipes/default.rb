application 'Hiss' do
  source 'http://collect3.com.au/hiss/Hiss.zip'
end

execute "Start Hiss on login" do
  command "defaults write loginwindow AutoLaunchedApplicationDictionary -array-add '{ \"Path\" = \"/Applications/Hiss.app\"; \"Hide\" = 0; }'"
  user ENV['SUDO_USER'] || ENV['USER']
end
