class ExamManagementController < ApplicationController
  def index
    #just holding fort to make the concept pan out better in my head
    @students = Student.all
    @subjects = Subject.all
  end

  def show
  end
end
