RailsAdmin.config do |config|

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end

  config.model 'User' do
    list do
      field :first_name
      field :last_name
      field :email
    end

    edit do
      field :first_name
      field :last_name
      field :email
      field :password
      field :password_confirmation
    end

    show do
      field :first_name
      field :last_name
      field :email
    end
  end

  config.model 'Bucketlist' do
    list do
      field :name
      field :user
    end

    edit do
      field :name
      field :user
    end

    show do
      field :name
      field :user
    end
  end

  config.model 'Item' do
    list do
      field :name
      field :done
      field :bucketlist
    end

    edit do
      field :name
      field :done
      field :bucketlist
    end

    show do
      field :name
      field :done
      field :bucketlist
    end
  end
end
