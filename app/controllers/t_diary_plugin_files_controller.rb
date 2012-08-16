class TDiaryPluginFilesController < ApplicationController
  # GET /t_diary_plugin_files
  # GET /t_diary_plugin_files.json
  def index
    @t_diary_plugin_files = TDiaryPluginFile.includes(:commit).sort!{|a,b|
      b.commit.date <=> a.commit.date
    }
    respond_to do |format|
      format.html # index.html.erb
      # format.json { render json: @t_diary_plugin_files }
    end
  end
end
