class TasksController < ApplicationController

	def index
		@tasks = Task.all
	end

	def create
		p params 
		@task = Task.new(task_params)
		@task.save!
		
			# if @task.save
				redirect_to tasks_path
			# else
			# 	render 'new'
			# end
	end

private
	def task_params
		params.require(:task).permit(:title, :description)
	end




end
