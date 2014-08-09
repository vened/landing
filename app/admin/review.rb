ActiveAdmin.register Review do

  permit_params :title, :body, :image
  menu :label => "Отзывы"
  config.filters = false

  form do |f|
    f.inputs "Создание/редактирование отзыва" do
      f.input :title, :label => "Имя"
      f.input :body
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb))
    end
    f.actions
  end

  index do
    selectable_column
    column "Имя" do |carousel|
      carousel.title
    end
    column "Текст" do |carousel|
      carousel.body
    end
    column "Изображение" do |item|
      image_tag(item.image.url(:thumb))
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


  controller do
    def create
      create! do |format|
        parameters = Rack::Utils.parse_query URI(request.referrer).query
        format.html { redirect_to '/admin/reviews/' }
      end
    end
  end


end
