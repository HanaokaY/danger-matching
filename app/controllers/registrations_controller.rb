class RegistrationsController < Devise::RegistrationsController

    before_action :authenticate_user!

    protected
  
    def update_resource(resource, params)
      resource.update_without_current_password(params)
    end

    def after_update_path_for(resource)
       
        # 下記コードでバイナリ化ができる
        # そのバイナリデータをimgタグでdata:image/png;base64,に続けて記載して使う
        unless params[:user][:profile_image].blank?

            binary_data = Base64.strict_encode64(File.read(params[:user][:profile_image]))
            p '----------------------------'
            # p params[:user][:profile_image] 使わないコードを残すことは良くない
            @user = User.find(current_user.id)
            @user.image_binary = binary_data
            @user.save

        end

        user_path(resource)
    end

    def after_sign_up_path_for(resource)
        users_path
    end

  end
  