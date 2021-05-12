ActiveAdmin.register Book do

  show title: :name do
    table_for(book) do
      column("Cover:") { image_tag(book.cover_image, width: 85) if book.cover_image.attached? }
      column("ID:") { book.id }
      column("Name:") { book.name }
      column("Description:") { book.description }
      column("List of authors:") { book.authors(&:name) }
      column("Date of creation:") { book.created_at }
    end
  end

  form name: 'A custom name' do |f|
    inputs 'Details' do
      input :name
        li "Created at #{f.object.created_at}" unless f.object.new_record?
      input :categories
      input :authors
      input :cover_image, as: :file
    end
    inputs 'Content', :description
    para "Press cancel to return to the list without saving."
    actions
  end

  permit_params :name, :description, :cover_image, :author_ids => [], :category_ids => []

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
