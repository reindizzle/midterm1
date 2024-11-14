classdef Student
    properties
        ID    % Student ID
        Name  % Student's Name
        Age   % Student's Age
        GPA   % Student's GPA
        Major % Student's Major
    end
    
    methods
        % Constructor to initialize properties
        function obj = Student(ID, Name, Age, GPA, Major)
            if nargin > 0
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
    end
end
