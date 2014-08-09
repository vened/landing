ActiveAdmin.register Carousel do

  permit_params :title, :body, :images
  menu :label => "Карусель"
  config.filters = false

  form do |f|
    f.inputs "Basic info" do
      f.input :title
      f.input :images, :as => :rich_picker, :config => {:style => 'width: 800px !important;'}
      f.input :body
      f.action :submit
    end
  end

  index do
    selectable_column
    column "Заголовок" do |carousel|
      carousel.title
    end
    column "Текст" do |carousel|
      carousel.body
    end
    column "Изображение" do |carousel|
      image_tag carousel.images, {:style => "width:220px"}
    end
    actions
  end

  
  show do
    attributes_table do
      row :title
      row :body
      row :images do
        image_tag carousel.images, {:style => "width:500px"}
      end
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
