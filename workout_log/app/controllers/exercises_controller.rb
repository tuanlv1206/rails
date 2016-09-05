class ExercisesController < ApplicationController
  before_action :set_workout
  before_action :set_workout_exercise, except: [:create]
  def create
    @exercise = @workout.exercises.create(exercise_params)

    redirect_to workout_path(@workout)
  end
  def edit

  end
  def update
    if @exercise.update(exercise_params)
      redirect_to @workout
    end
  end
  def destroy
    @exercise.destroy
    redirect_to @workout
  end

  private
  def set_workout
    @workout = Workout.find(params[:workout_id])
  end
  def set_workout_exercise
    @exercise = @workout.exercises.find(params[:id])
  end
  def exercise_params
    params[:exercise].permit(:name, :sets, :reps)
  end
end
