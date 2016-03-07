class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy, :like]

  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit
  end

  # POST /lists
  # POST /lists.json
  def create
    @list =List.new(list_params)
      @list.user_id = current_user.id
# binding.pry
    respond_to do |format|
      if @list.save

        # Sends email to user when user is created.
        ExampleMailer.sample_email(@list).deliver_now

        format.html { redirect_to lists_url, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def like
      # @list = List.find(params[:id])  donné ds le set_list
      if @list.likes.count == 0
        @list.likes.create

      else
        @list.likes.delete
      end
      # binding.pry
      redirect_to(lists_path)
  end

  def newsletter
    #code
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
        params.require(:list).permit(:username, :phone, :subscribe, :gender, :address, :citycode, :city, :user_id, :email)
    end
end
