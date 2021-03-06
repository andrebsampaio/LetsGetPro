class FriendshipsController < ApplicationController


  # POST /friendships
  # POST /friendships.json
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    @friendship.confirmation = false
    if @friendship.save
      flash[:notice] = "Friend Added"
      redirect_to root_url
    else
      flash[:error] = "Unable to add friend."
      redirect_to root_url
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Friend Removed"
    redirect_to current_user
  end
end
