% Step 1: Initialize the StudentDatabase
db = StudentDatabase();

% Step 2: Add sample students to the database
db = db.addStudent(Student('S001', 'Alice', 20, 3.8, 'Computer Science'));
db = db.addStudent(Student('S002', 'Bob', 22, 3.2, 'Physics'));
db = db.addStudent(Student('S003', 'Charlie', 21, 3.5, 'Mathematics'));
db = db.addStudent(Student('S004', 'David', 23, 2.8, 'Computer Science'));
db = db.addStudent(Student('S005', 'Eva', 19, 3.9, 'Physics'));
db = db.addStudent(Student('S006', 'Frank', 20, 3.1, 'Mathematics'));
db = db.addStudent(Student('S007', 'Grace', 22, 3.7, 'Computer Science'));

% Step 3: Perform searches
% Search for a student by ID
searchID = 'S003';
student = db.getStudentByID(searchID);
if isempty(student)
    fprintf('Student with ID %s not found.\n', searchID);
else
    fprintf('Found student: %s, GPA: %.2f, Major: %s\n', student.Name, student.GPA, student.Major);
end

% Get all students in a particular major (e.g., Computer Science)
major = 'Computer Science';
studentsInMajor = db.getStudentsByMajor(major);
fprintf('Students in %s:\n', major);
for i = 1:length(studentsInMajor)
    disp(studentsInMajor{i}.Name);
end

% Step 4: Generate visualizations

% GPA distribution histogram
gpas = db.getGPAList();
figure;
histogram(gpas, 5, 'FaceColor', 'b', 'EdgeColor', 'k');
title('GPA Distribution');
xlabel('GPA');
ylabel('Frequency');

% Average GPA by Major
majors = {'Computer Science', 'Physics', 'Mathematics'};
avgGPAByMajor = zeros(1, length(majors));

for i = 1:length(majors)
    studentsByMajor = db.getStudentsByMajor(majors{i});
    avgGPAByMajor(i) = mean(cellfun(@(student) student.GPA, studentsByMajor));
end

figure;
bar(avgGPAByMajor);
set(gca, 'XTickLabel', majors);
title('Average GPA by Major');
xlabel('Major');
ylabel('Average GPA');
