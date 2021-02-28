class BulletinBoardsController < ApplicationController
  def index
    @bulletin_boards = BulletinBoard.all
    @bulletin_board = BulletinBoard.new
  end

  def show
    @bulletin_board = BulletinBoard.find_by(id: params[:bulletin_board_id])
    @message_posts = MessagePost.where(bulletin_board_id: @bulletin_board.id)
    @message_post = MessagePost.new
  end

  def create
    bulletin = BulletinBoard.new(bulletin_board_params)
    if bulletin.save
      flash[:success] = '掲示板を作成しました。'
    else
      flash[:dander] = '掲示板の作成に失敗しました。'
    end

    redirect_to bulletin_boards_path
  end

  private

  def bulletin_board_params
    params.require(:bulletin_board).permit(:title, :description)
  end
end