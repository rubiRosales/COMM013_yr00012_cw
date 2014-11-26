ActiveAdmin.register NewsLetter do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :date, :newsletter
  
  form :html => {:enctype => "multipart/form-data"} do |f|
    f.inputs "NewsLetter", :multipart => true do
      f.input :name
      f.input :date
      f.input :newsletter
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
