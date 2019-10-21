module ControllerMacros
  def login_user(user)
    before(:each) do
      @user = create(:user)
      sign_in(@user)
    end
  end
end