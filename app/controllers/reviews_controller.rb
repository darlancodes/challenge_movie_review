class ReviewsController < ApplicationController
  #Os before_actions servem para ações que devem ocorrer antes do inicio do uso das
  #funções da página.
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  #Essa função é declarada lá em baixo.
  before_action :set_filme
  before_action :authenticate_user!


  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)
    #O id do usuário que estiver logado irá para a tabela user_id do obj review.
    @review.user_id = current_user.id
    @review.filme_id = @filme.id


      if @review.save
        redirect_to @filme

        else
        render 'new'
        end
      end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    @review.update(review_params)
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    #Função para encontrar o filme de acordo com o id passado.
    def set_filme
     @filme = Filme.find(params[:filme_id])
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:rating, :comment)
    end
