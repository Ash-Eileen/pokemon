class Pokemon2Controller < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
  @name_arr = ["charmander", "charizard", "jigglypuff", "bulbasaur"]
  @level_arr = [10, 20, 30, 40, 99]
  @type1_hash = {grass: "green", fire: "red", water: "blue", ice: "DarkBlue", fairy: "pink"}
  @type2_arr = ["rock", "bug", "poison", "dragon", "dark"]
  #render json: {
  #  name: (params[:name] || @name_arr.sample),
  #  level: (params[:level] || @level_arr.sample).to_i,
  #  "type 1": (params[:type1] || @type1_arr.sample),
  #  "type 2": (params[:type2] || @type2_arr.sample)
  #}
  @name = (params[:name] || @name_arr.sample)
  @level = (params[:level] || @level_arr.sample)
  @type1 = (params[:type1] || @type1_hash.keys.sample)
  @type2 = params[:type2]
  end
end
