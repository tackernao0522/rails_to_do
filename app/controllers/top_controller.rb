class TopController < ApplicationController
  
   def index
      # 作成時間の昇降順にデータを取得
      @lists = List.where(user: current_user).order("created_at ASC")
   end
end
