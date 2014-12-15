module RolifyUi
  class ApplicationController < ActionController::Base

    helper_method :rolified_classes

    def rolified_classes
      @rolified_classes ||= RolifyUi::Rolified.new
    end

  end
end
