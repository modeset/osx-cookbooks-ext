%w( MesloLGL MesloLGM MesloLGS ).each do |prefix|
  %w( Regular Bold Italic BoldItalic ).each do |style|

    # Normal variant
    cookbook_file "#{node[:fonts][:path]}/#{prefix}-#{style}.ttf" do
      mode 0444
      owner node[:fonts][:user]
      group "staff"
    end

    # Dotted Zero variant
    cookbook_file "#{node[:fonts][:path]}/#{prefix}-DZ-#{style}.ttf" do
      mode 0444
      owner node[:fonts][:user]
      group "staff"
    end

  end
end
