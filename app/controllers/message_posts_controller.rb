class MessagePostsController < ApplicationController
  def create
    message_post = MessagePost.new(message_post_params)
    if message_post.save
      flash[:success] = '投稿完了しました。'
    else
      flash[:danger] = '投稿に失敗しました。'
    end
    redirect_to bulletin_board_show_path(params[:bulletin_board_id])
  end

  private

  def message_post_params
    params.require(:message_post).permit(:name, :gender, :game_id, :message, :purpose, :bulletin_board_id)
  end
end