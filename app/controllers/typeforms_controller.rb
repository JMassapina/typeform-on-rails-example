class TypeformsController < ApplicationController
  def new
    #Controller action for GET /typeforms/new
  end

  def index
    #Controller action for GET /typeforms/
    @typeforms = Typeform.all
  end

  def edit
    #Controller action for GET /typeforms/:id/edit
  end

  def show
    #Controller action for GET /typeforms/:id
  end

  def update
    #Controller action for PUT /typeforms/:id
    #Controller action for PATCH /typeforms/:id
  end

  def destroy
    #Controller action for DELETE /typeforms/:id
  end

  def create
    #Controller action for POST /typeforms/

    if params[:event_type] == 'form_response'
      movie, adjective, hawaiian, messi = nil

      answers = params[:form_response][:answers]
      answers.each do |answer|
        case answer[:field][:id]
          when 'fsu5WW56O7QO'
            movie = answer[:choice][:label]
          when 'KwZm8TV5vscB'
            adjective = answer[:text]
          when 'ZYhudqy05oLZ'
            hawaiian = answer[:boolean]
          when 'QJVf5AQPAB4N'
            messi = answer[:number]
        end
      end

      @typeform = Typeform.new(movie: movie, adjective: adjective, hawaiian: hawaiian, messi: messi)
      @typeform.save
    end

  end
end