class FireworkCommentsController < ApplicationController
  before_action :set_firework_comment, only: [:show, :edit, :update, :destroy]

  # GET /firework_comments
  # GET /firework_comments.json
  def index
    @firework_comments = FireworkComment.all
  end

  # GET /firework_comments/1
  # GET /firework_comments/1.json
  def show
  end

  # GET /firework_comments/new
  def new
    @firework_comment = FireworkComment.new
  end

  # GET /firework_comments/1/edit
  def edit
  end

  # POST /firework_comments
  # POST /firework_comments.json
  def create
    @firework_comment = FireworkComment.new(firework_comment_params)

    respond_to do |format|
      if @firework_comment.save
        format.html { redirect_to @firework_comment, notice: 'Firework comment was successfully created.' }
        format.json { render :show, status: :created, location: @firework_comment }
      else
        format.html { render :new }
        format.json { render json: @firework_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firework_comments/1
  # PATCH/PUT /firework_comments/1.json
  def update
    respond_to do |format|
      if @firework_comment.update(firework_comment_params)
        format.html { redirect_to @firework_comment, notice: 'Firework comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @firework_comment }
      else
        format.html { render :edit }
        format.json { render json: @firework_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firework_comments/1
  # DELETE /firework_comments/1.json
  def destroy
    @firework_comment.destroy
    respond_to do |format|
      format.html { redirect_to firework_comments_url, notice: 'Firework comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firework_comment
      @firework_comment = FireworkComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firework_comment_params
      params.require(:firework_comment).permit(:comment)
    end
end
