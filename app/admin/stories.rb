ActiveAdmin.register Story do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :body, :topic, :user_id, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :topic, :user_id, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  def to_param
    id.to_s + '-' + title.parameterize
  end

end
