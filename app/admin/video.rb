ActiveAdmin.register Video do


  permit_params :src
  menu :label => "Видео"
  config.filters = false
  
end
