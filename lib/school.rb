# code here!
require 'pry'
class School

    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        # if !@roster.keys.include?(grade) 
        #     @roster[grade] = []
        #     @roster[grade] << name
        # else
        #     @roster[grade] << name
        # end
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.each do |grade,array|
            sorted[grade] = array.sort
        end
        sorted
    end

end