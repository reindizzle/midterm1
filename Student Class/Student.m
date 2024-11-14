
classdef Student
    % Properties of the Student class
    properties
        ID     % Student ID
        Name   % Student's name
        Age    % Student's age
        GPA    % Student's GPA
        Major  % Student's major
    end
    
    % Constructor and methods
    methods
        % Constructor to initialize properties
        function obj = Student(ID, Name, Age, GPA, Major)
            if nargin > 0  % Only initialize if arguments are provided
                obj.ID = ID;
                obj.Name = Name;
                obj.Age = Age;
                obj.GPA = GPA;
                obj.Major = Major;
            end
        end
        
        % Method to display student information
        function displayInfo(obj)
            fprintf('ID: %s\n', obj.ID);
            fprintf('Name: %s\n', obj.Name);
            fprintf('Age: %d\n', obj.Age);
            fprintf('GPA: %.2f\n', obj.GPA);
            fprintf('Major: %s\n', obj.Major);
        end
        
        % Method to update GPA
        function obj = updateGPA(obj, newGPA)
            obj.GPA = newGPA;
            fprintf('Updated GPA: %.2f\n', obj.GPA);
        end
    end
end


