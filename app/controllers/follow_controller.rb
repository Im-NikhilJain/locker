class FollowController < ApplicationController

		before_action :authenticate_user!

	def follow
  	followee_id = params[:followee_id]
  	if current_user.can_follow(followee_id)
  		FollowerMapping.create(:followee_id => followee_id, :follower_id => current_user.id)
  	else
  	end
  	return redirect_to '/users'
  end

  def unfollow
  	followee_id = params[:followee_id]
  	if current_user.can_un_follow(followee_id)
  		FollowerMapping.where(:followee_id => followee_id, :follower_id => current_user.id).first.destroy
  	else
  	end
  	return redirect_to '/users'
  end

end