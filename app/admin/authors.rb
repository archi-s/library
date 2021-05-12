ActiveAdmin.register Author do

  show title: :name do
    table_for(author) do
      column("ID:") { author.id }
      column("Name:") { author.name }
      column("Number of books:") { author.books.count }
      column("Date of registered:") { author.created_at }
      column("List of books:") { author.books(&:name) }
    end
  end

  form title: :name do |f|
    inputs do
      input :name
    end
    para "Press cancel to return to the list without saving."
    actions
  end

  permit_params :name

#    autoprefixer-rails (10.0.0.2)


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
