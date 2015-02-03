class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @new_todo = Todo.new
    render :index
  end
   def add
   todo = Todo.create(:todo => params[:todo][:todo])
   unless todo.valid?
     flash[:error] = todo.errors.full_messages.join("<br>").html_safe
   else
     #set flash[:success] to "Todo added successfully"
   end
  redirect_to :action => 'index'
  end
def delete
end
def complete
    params[:todos_checkbox].each do |check|
       todo_id = check
       t = Todo.find_by_id(todo_id)
       #code to update the status here
        t.update_attribute(:completed, true)
     end
    redirect_to :action => 'index'
 end

end
