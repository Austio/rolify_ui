require_dependency "rolify_ui/application_controller"

module RolifyUi
  class AdminController < ApplicationController
    def index
      @users = ::User.all
    end
  end
end
