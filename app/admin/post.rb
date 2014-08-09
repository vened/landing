ActiveAdmin.register Post do

  permit_params :name, :body
  menu :label => "Текстовые блоки"
  config.filters = false

  form do |f|
    f.inputs "Basic info" do
      f.input :name
      # f.input :featured_image, :as => :rich_picker, :config => {:style => 'width: 400px !important;'}
      f.input :body, :as => :rich, :config => {:width => '76%', :height => '400px'}
      f.action :submit
    end
  end


end
