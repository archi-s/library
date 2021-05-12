ActiveAdmin.register Category do

  form name: 'A custom name' do |f|
    inputs 'Add category' do
      input :name
        li "Created at #{f.object.created_at}" unless f.object.new_record?
    end
    para "Press cancel to return to the list without saving."
    actions
  end

  permit_params :name
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
