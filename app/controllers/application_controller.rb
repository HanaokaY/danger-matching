class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender])
    end

    # このコードは、devise_controllerを使うときに、configure_permitted_parametersメソッドを読み込むというコードになります。

    # 上記のコードはApplicationコントローラーに追加しました。Applicationコントローラーは全てのコントローラーが読まれる前に必ず読まれるコントローラーです。例えば、topコントローラーのindexアクションが読み込まれる前に、Applicationコントローラーが読まれます。
    
    # ただ、nameカラムやgenderカラムが保存できるようにする設定のコードであるconfigure_permitted_parametersメソッドは、サインアップやアカウントを編集するときに読み込まれれば大丈夫です。
    
    # そのためbefore_action を使って、Applicationコントローラーが読み込まれた最初に、configure_permitted_parametersメソッドを読むかどうか判断しています。
    
    # これでアカウントを作成する際に、nameカラムとgenderカラムを保存できるようになります。

end
