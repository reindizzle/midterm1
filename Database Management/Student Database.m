classdef StudentDatabase
    properties
        Students = {}; % Cell array to store Student objects
    end
    
    methods
        % Add a new student to the database
        function obj = addStudent(obj, student)
            obj.Students{end+1} = student;
        end
        
        % Find a student by ID
        function student = findStudentByID(obj, ID)
            student = [];
            for i = 1:length(obj.Students)
                if strcmp(obj.Students{i}.ID, ID)
                    student = obj.Students{i};
                    return;
                end
            end
        end
        
        % Get a list of students by major
       function studentsByMajor = getStudentsByMajor(obj, major)
    % Extract majors of all students into a cell array
    majors = cellfun(@(student) student.Major, obj.Students, 'UniformOutput', false);
    
    % Find indices of students with the matching major
    matchingIndices = find(strcmp(majors, major));
    numMatches = numel(matchingIndices);
    
    % Preallocate cell array
    studentsByMajor = cell(1, numMatches);
    
    % Assign matching students to preallocated array
    for i = 1:numMatches
        studentsByMajor{i} = obj.Students{matchingIndices(i)};
    end
end

        
        % Save database to a .mat file
        function saveDatabase(obj, filename)
            Students = obj.Students;
            save(filename, 'Students');
            fprintf('Database saved to %s\n', filename);
        end
        
        % Load database from a .mat file
        function obj = loadDatabase(obj, filename)
            if isfile(filename)
                loadedData = load(filename, 'Students');
                obj.Students = loadedData.Students;
                fprintf('Database loaded from %s\n', filename);
            else
                fprintf('File %s does not exist.\n', filename);
            end
        end
    end
end
