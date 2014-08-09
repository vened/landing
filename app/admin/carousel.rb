ActiveAdmin.register Carousel do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :body, :images

  form do |f|
    f.inputs "Basic info" do
      f.input :title
      f.input :images, :as => :rich_picker, :config => {:style => 'width: 600px !important;'}
      f.input :body
      f.action :submit
    end
  end
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  
  
end
