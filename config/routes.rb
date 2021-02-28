Rails.application.routes.draw do
  get 'bulletin_boards', to: 'bulletin_boards#index'
  get 'bulletin_board/:bulletin_board_id', to: 'bulletin_boards#show', as: :bulletin_board_show
  post 'bulletin_board_create', to: 'bulletin_boards#create', as: :bulletin_board_create
  post 'message_post_create/:bulletin_board_id', to: 'message_posts#create', as: :message_post_create
end
