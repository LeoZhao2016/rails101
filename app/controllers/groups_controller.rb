class GroupsController < ApplicationController
before_action :authenticate_user! , only: [:new, :create, :edit, :update, :destroy]
before_action :find_group_and_check_permission, only: [:edit, :update, :destroy]

def edit
end

def update
if @group.update(group_params)
 redirect_to groups_path, notice: "Update Success"
else
 render :edit
end
end

def destroy
@group.destroy
redirect_to groups_path, alert: "Group deleted"
end
