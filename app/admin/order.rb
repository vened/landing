ActiveAdmin.register Order do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :phone, :date
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  # form do |f|
  #   f.inputs "Basic info" do
  #     f.input :name
  #     # f.input :featured_image, :as => :rich_picker, :config => {:style => 'width: 400px !important;'}
  #     f.input :body, :as => :rich, :config => {:width => '76%', :height => '400px'}
  #     f.action :submit
  #   end
  # end


end
