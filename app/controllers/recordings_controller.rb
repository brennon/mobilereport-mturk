class RecordingsController < ApplicationController
  # GET /recordings
  # GET /recordings.xml
  def index
    @recordings = Recording.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @recordings }
    end
  end

  # GET /recordings/1
  # GET /recordings/1.xml
  def show
    @recording = Recording.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @recording }
    end
  end

  # GET /recordings/new
  # GET /recordings/new.xml
  def new
    @recording = Recording.new
    @script = Script.random

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @recording }
    end
  end

  # GET /recordings/1/edit
  def edit
    @recording = Recording.find(params[:id])
    @script = @recording.script
  end

  # POST /recordings
  # POST /recordings.xml
  def create
    @recording = Recording.new(params[:recording])

    respond_to do |format|
      if @recording.save
        format.html { redirect_to(@recording, :notice => 'Recording was successfully created.') }
        format.xml  { render :xml => @recording, :status => :created, :location => @recording }
      else
        @script = Script.find(params[:recording][:script_id])
        format.html { render :action => "new" }
        format.xml  { render :xml => @recording.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /recordings/1
  # PUT /recordings/1.xml
  def update
    @recording = Recording.find(params[:id])

    respond_to do |format|
      if @recording.update_attributes(params[:recording])
        format.html { redirect_to(@recording, :notice => 'Recording was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @recording.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /recordings/1
  # DELETE /recordings/1.xml
  def destroy
    @recording = Recording.find(params[:id])
    @recording.destroy

    respond_to do |format|
      format.html { redirect_to(recordings_url) }
      format.xml  { head :ok }
    end
  end
end
