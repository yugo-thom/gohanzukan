class TweetsController < ApplicationController
     before_action :authenticate_user!, only: [:new, :create]
     def index
        @tweets = Tweet.all
      end
    
      def new
        @tweet = Tweet.new
      end
      
     
      
      def create
        tweet = Tweet.new(tweet_params)

        tweet.user_id = current_user.id 

        if tweet.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
      def show
        @tweet = Tweet.find(params[:id])
      end
      private
      def tweet_params
        params.require(:tweet).permit(:image, :name, :address, :about, :price)
      end
     #ここまで
    
     def update
      tweet = Tweet.find(params[:id])
      if tweet.update(tweet_params)
        redirect_to :action => "show", :id => tweet.id
      else
        redirect_to :action => "new"
      end
    end
    
      def edit
        @tweet = Tweet.find(params[:id])
      end
    
      def update
        tweet = Tweet.find(params[:id])
        if tweet.update(tweet_params)
          redirect_to :action => "show", :id => tweet.id
        else
          redirect_to :action => "new"
        end
      end
    
      # 追加ここから
      def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
        redirect_to action: :index
      end
      # ここまで
    
      private
      def tweet_params
        params.require(:tweet).permit(:body, :image, :name, :address, :about, :price, :eattime,)
      end
    
    end

    

 
  
    

    
