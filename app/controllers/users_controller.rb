class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])  # ルーティングで送信されたIDを使ってユーザーを取得
    @prototypes = @user.prototypes  # ユーザーが投稿したプロトタイプを取得
  end
end
