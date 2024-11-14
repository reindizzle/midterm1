classdef StudentDatabase
    properties
        Students = {}; % A cell array to store Student objects
    end
    
    methods
        % Add student to the database
        function obj = addStudent(obj, student)
            obj.Students{end+1} = student; % Add student to the database
        end
        
        % Search for a student by ID
        function student = getStudentByID(obj, studentID)
            student = [];
            for i = 1:length(obj.Students)
                if strcmp(obj.Students{i}.ID, studentID)
                    student = obj.Students{i};
                    return;
                end
            end
        end
        
        % Get students by major
        function studentsByMajor = getStudentsByMajor(obj, major)
            studentsByMajor = {};
            for i = 1:length(obj.Students)
                if strcmp(obj.Students{i}.Major, major)
                    studentsByMajor{end+1} = obj.Students{i};
                end
            end
        end
        
        % Get GPA list
        function gpas = getGPAList(obj)
            gpas = cellfun(@(student) student.GPA, obj.Students);
        end
    end
end
