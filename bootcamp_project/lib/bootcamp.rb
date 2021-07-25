




class Bootcamp

    def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @students = []
    @teachers = []
    @grades = Hash.new { |h, k| h[k] = [] }
    end

    def name
        @name
    end

    def slogan
        @slogan
    end
    def teachers
        @teachers
    end
    def students
        @students
    end

    def hire(teacher)
        @teachers << teacher
    end

    def enroll(student)
        if @students.length < @student_capacity
            @students << student
            return true
        else 
            return false
        end
    end

    def enrolled?(student)
        @students.each do |stud|
            if stud.capitalize == student.capitalize
                return true
            end
        end
        false
    end
    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(student, grade)
        if enrolled?(student) == true
            @grades[student] << grade
            return true
        else 
            return false
        end
    end

    def num_grades(student)
        @grades[student].length
    end

    def average_grade(student)
        if num_grades(student) == 0
            return nil
        end
        @grades[student].sum / num_grades(student) * 1.0
    end
end
#     describe "#average_grade" do
#       it "should accept a student (string) and return a number representing their average grade rounded down to the nearest integer" do
#         bootcamp.enroll("Alice")
#         bootcamp.add_grade("Alice", 100)
#         bootcamp.add_grade("Alice", 75)
#         expect(bootcamp.average_grade("Alice")).to eq(87)

#         bootcamp.enroll("Bob")
#         bootcamp.add_grade("Bob", 80)
#         expect(bootcamp.average_grade("Bob")).to eq(80)
#       end

#       it "should return nil if the student has no grades or is not enrolled" do
#         bootcamp.enroll("Bob")
#         expect(bootcamp.average_grade("Bob")).to eq(nil)

#         expect(bootcamp.average_grade("Alice")).to eq(nil)
#       end
#     end
#   end
# end
