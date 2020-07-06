class PostsController < ApplicationController
  before_action :authenticate_account!, except: [:show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  

  # GET /posts
  # GET /posts.json
  def index
    @search = Post.ransack(params[:q])
    @posts = @search.result(:distinct => true)
    @posts = @search.result.paginate(page: params[:page], per_page: 20)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])

    if @post.account != current_account
      return render plain: 'Not Allowed', status: :forbidden
    end
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.account_id = current_account.id if account_signed_in?


    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    if @post.account != current_account
      return render plain: 'Not Allowed', status: :forbidden
    end

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])

    if @post.account != current_account
      return render plain: 'Not Allowed', status: :forbidden
    end

    @post.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Post was successfully destroyed.' }
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
      
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.fetch(:post, {}).permit(:title,:contact , :content, :category_id, :genre_id, :city_id, instrument_id:[])
    end
end
