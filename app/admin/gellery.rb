ActiveAdmin.register Gallery do

  permit_params :title, :body, :image
  menu :label => "Фотогаллерея"
  config.filters = false

  form do |f|
    f.inputs "Project Details" do
      f.input :title
      f.input :image, :as => :file
      # f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb))
    end
    f.actions
  end

  index do
    selectable_column
    column "Изображение" do |item|
      image_tag(item.image.url(:medium))
    end
    actions
  end

  show do |item|
    attributes_table do
      row :image do
        image_tag(item.image.url(:thumb))
      end
    end
  end

end
