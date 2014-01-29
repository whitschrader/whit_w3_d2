
class CreaturesController < ApplicationController
 	#READ all creatures

 	def index
 		#use model to get all creatures
 		@creatures = Creature.all 
 		render :index
	end

	def new
		render :new
	end

	def create
		creature = params.require(:creature).permit(:name, :description)
		Creature.create(creature)
		redirect_to "/creatures"
	end

	def show
		creature_id = params[:id]
		@creature = Creature.find(creature_id)
		render :show
	end

	def edit
		creature_id = params[:id]
		@creature = Creature.find(creature_id)
		render :edit
	end

	def update
		creature_id = params[:id]
		creature = Creature.find(creature_id)

		#get updated data
		updated_attributes = params.require(:creature).permit(:name, :description)
		#update the creature
		creature.updated_attributes(updated_attributes)

		#redirect to show
		redirect_to "/posts/#{creature_id}"
	end

	def delete
		@id = params[:id[
		render :delete
	end

	def remove
		creatutre_id = params[:id]
		@creature = Creature.find(creature_id)
		Creature.destroy
		render :remove
	end








end
