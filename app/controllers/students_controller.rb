class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students 
    end

    def grades
        grades = Student.order(grade: :DESC)
        render json: grades
    end

    def highest_grade
        index1 = Student.order(grade: :DESC).first
        render json: index1
    end
end
