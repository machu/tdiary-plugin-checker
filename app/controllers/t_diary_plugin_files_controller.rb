class TDiaryPluginFilesController < ApplicationController
  # GET /t_diary_plugin_files
  # GET /t_diary_plugin_files.json
  def index
    @t_diary_plugin_files = TDiaryPluginFile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @t_diary_plugin_files }
    end
  end

  # GET /t_diary_plugin_files/1
  # GET /t_diary_plugin_files/1.json
  def show
    @t_diary_plugin_file = TDiaryPluginFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @t_diary_plugin_file }
    end
  end

  # GET /t_diary_plugin_files/new
  # GET /t_diary_plugin_files/new.json
  def new
    @t_diary_plugin_file = TDiaryPluginFile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @t_diary_plugin_file }
    end
  end

  # GET /t_diary_plugin_files/1/edit
  def edit
    @t_diary_plugin_file = TDiaryPluginFile.find(params[:id])
  end

  # POST /t_diary_plugin_files
  # POST /t_diary_plugin_files.json
  def create
    @t_diary_plugin_file = TDiaryPluginFile.new(params[:t_diary_plugin_file])

    respond_to do |format|
      if @t_diary_plugin_file.save
        format.html { redirect_to @t_diary_plugin_file, notice: 'T diary plugin file was successfully created.' }
        format.json { render json: @t_diary_plugin_file, status: :created, location: @t_diary_plugin_file }
      else
        format.html { render action: "new" }
        format.json { render json: @t_diary_plugin_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /t_diary_plugin_files/1
  # PUT /t_diary_plugin_files/1.json
  def update
    @t_diary_plugin_file = TDiaryPluginFile.find(params[:id])

    respond_to do |format|
      if @t_diary_plugin_file.update_attributes(params[:t_diary_plugin_file])
        format.html { redirect_to @t_diary_plugin_file, notice: 'T diary plugin file was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @t_diary_plugin_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_diary_plugin_files/1
  # DELETE /t_diary_plugin_files/1.json
  def destroy
    @t_diary_plugin_file = TDiaryPluginFile.find(params[:id])
    @t_diary_plugin_file.destroy

    respond_to do |format|
      format.html { redirect_to t_diary_plugin_files_url }
      format.json { head :no_content }
    end
  end
end
