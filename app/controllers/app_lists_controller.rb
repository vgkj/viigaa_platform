class AppListsController < ApplicationController
  before_action :set_app_list, only: [:show, :edit, :update, :destroy]

  # GET /app_lists
  # GET /app_lists.json
  def index
    @app_lists = AppList.paginate(page: params[:page],per_page: 2)
    #@app_lists = AppList.paginate(page: params[:page])
  end

  # GET /app_lists/1
  # GET /app_lists/1.json
  def show
    @app_resouces = @app_list.app_resouces.all
  end

  # GET /app_lists/new
  def new
    @app_list = AppList.new
    @app_resouce = @app_list.app_resouces.build
  end

  # GET /app_lists/1/edit
  def edit
  end

  # POST /app_lists
  # POST /app_lists.json
  def create
    @app_list = AppList.new(app_list_params)
    respond_to do |format|
      if @app_list.save
        params[:app_resouce][:app_pic].each do |p|
          @app_resouce = @app_list.app_resouces.create!(:app_pic=> p,:app_list_id=>@app_list.id)
        end
        format.html { redirect_to @app_list, notice: 'App list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @app_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @app_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_lists/1
  # PATCH/PUT /app_lists/1.json
  def update
    respond_to do |format|
      if @app_list.update(app_list_params)
        @app_list.app_resouces.all.each do |r|
          r.destroy
        end
        params[:app_resouce][:app_pic].each do |p|
          @app_resouce = @app_list.app_resouces.create!(:app_pic=> p,:app_list_id=>@app_list.id)
        end
        format.html { redirect_to @app_list, notice: 'App list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @app_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_lists/1
  # DELETE /app_lists/1.json
  def destroy
    @app_list.app_resouces.destroy
    @app_list.destroy
    respond_to do |format|
      format.html { redirect_to app_lists_url }
      format.json { head :no_content }
    end
  end

  private
    def set_app_list
      @app_list = AppList.find(params[:id])
    end

    def app_list_params
      params.require(:app_list).permit(:app_title,:app_parent,:app_child,:app_count,:app_version,:app_size,:app_credit,
                    :app_type,:app_system,:app_url,:app_logo,app_resouce_attributes:[:app_pic])
    end
end
