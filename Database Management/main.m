% Create an instance of StudentDatabase
db = StudentDatabase();

% Add students
student1 = Student('S001', 'Alice', 20, 3.8, 'Computer Science');
student2 = Student('S002', 'Bob', 22, 3.2, 'Physics');
db = db.addStudent(student1);
db = db.addStudent(student2);

% Find a student by ID
student = db.findStudentByID('S001');
if ~isempty(student)
    student.displayInfo();
else
    fprintf('Student not found.\n');
end

% Get students by major
csStudents = db.getStudentsByMajor('Computer Science');
for i = 1:length(csStudents)
    csStudents{i}.displayInfo();
end

% Save and load the database
db.saveDatabase('student_database.mat');
db = db.loadDatabase('student_database.mat');
