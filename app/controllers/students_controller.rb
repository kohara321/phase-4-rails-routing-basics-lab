class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students_order_by_grade = Student.all.order(grade: :DESC)
        render json: students_order_by_grade
    end

    def highest_grade
        student = Student.all.order(grade: :DESC).first
        render json: student
    end

end
