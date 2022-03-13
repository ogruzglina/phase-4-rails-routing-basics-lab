class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        ordered_students = Student.order(grade: :desc)
        render json: ordered_students
    end

    def highest_grade
        render json: Student.highest_grade
    end 
end
