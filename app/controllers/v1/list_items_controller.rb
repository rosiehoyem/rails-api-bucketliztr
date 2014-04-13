module V1
  class ListItemsController < ApplicationController
    # GET /list_items
    # GET /list_items.json
    def index
      @list_items = ListItem.all

      render json: @list_items
    end

    # GET /list_items/1
    # GET /list_items/1.json
    def show
      @list_item = ListItem.find(params[:id])

      render json: @list_item
    end

    # POST /list_items
    # POST /list_items.json
    def create
      @list_item = ListItem.new(params[:list_item])

      if @list_item.save
        render json: @list_item, status: :created, location: @list_item
      else
        render json: @list_item.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /list_items/1
    # PATCH/PUT /list_items/1.json
    def update
      @list_item = ListItem.find(params[:id])

      if @list_item.update(params[:list_item])
        head :no_content
      else
        render json: @list_item.errors, status: :unprocessable_entity
      end
    end

    # DELETE /list_items/1
    # DELETE /list_items/1.json
    def destroy
      @list_item = ListItem.find(params[:id])
      @list_item.destroy

      head :no_content
    end
  end
end
