class WidgetsController < ApplicationController

  def show
    respond_to do |format|
      format.js
    end
  end

end
