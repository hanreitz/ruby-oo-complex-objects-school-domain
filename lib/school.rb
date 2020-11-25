# code here!
require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :roster

    def add_student(name, grade)
       # binding.pry
        if @roster.has_key?(grade) == true
            @roster[grade] << "#{name}"
        else
            @roster[grade] = []
            @roster[grade] << "#{name}"
        end
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_hash = {}
        @roster.each do |grade, student_list|
            sorted_hash[grade] = student_list.sort
        end
        sorted_hash
    end
end