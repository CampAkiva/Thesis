class DocumentsController < ApplicationController
  def index
    @room = Room.find(params[:room_id])
  	@documents = @room.documents
  end

  def show
  	@document = Document.find(params[:id])
  end

  def new
    @room = Room.find(params[:room_id])
    @document = Document.new(room: @room)
  end

  def create
    @room = Room.find(params[:room_id])
    @document = Document.new(document_params)
    @document.room = @room

    if @document.save
      redirect_to room_document_path(@document.room.id, @document.id)
    else
      render :new
    end
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @room = Room.find(params[:room_id])
    @document = Document.find(params[:id])
    @document.room = @room

    if @document.update(document_params)
      redirect_to room_document_path(@document.room.id, @document.id)
    else
      render :edit
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to root_path, notice: 'document deleted'
  end

private

  def document_params
    params.require(:document).permit(:title, :avatar)
  end
end