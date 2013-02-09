class EvaluationsController < ApplicationController
  respond_to :json

  def create
    factory = RGeo::Geographic.spherical_factory(:srid => 4326)
    lonlat = factory.point(params[:evaluation].delete(:lon), params[:evaluation].delete(:lat))
    eval = Evaluation.new(params[:evaluation])
    eval.lonlat = lonlat
    eval.save
    respond_with eval, location: nil
  end

end
