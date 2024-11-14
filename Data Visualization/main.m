% Step 1: Create student data
ID = {'S001', 'S002', 'S003', 'S004', 'S005', 'S006', 'S007'};
Names = {'Alice', 'Bob', 'Charlie', 'David', 'Eva', 'Frank', 'Grace'};
Ages = [20, 22, 21, 23, 19, 20, 22];
GPAs = [3.8, 3.2, 3.5, 2.8, 3.9, 3.1, 3.7];
Majors = {'Computer Science', 'Physics', 'Mathematics', 'Computer Science', 'Physics', 'Mathematics', 'Computer Science'};

% Step 2: GPA Distribution Histogram
figure;
histogram(GPAs, 5, 'FaceColor', 'b', 'EdgeColor', 'k');
title('GPA Distribution');
xlabel('GPA');
ylabel('Frequency');

% Step 3: Average GPA by Major
uniqueMajors = unique(Majors);
avgGPAByMajor = zeros(1, length(uniqueMajors));

for i = 1:length(uniqueMajors)
    % Find the indices of students with the current major
    majorIndices = strcmp(Majors, uniqueMajors{i});
    % Compute the average GPA for this major
    avgGPAByMajor(i) = mean(GPAs(majorIndices));
end

% Plot Average GPA by Major
figure;
bar(avgGPAByMajor);
set(gca, 'XTickLabel', uniqueMajors);
title('Average GPA by Major');
xlabel('Major');
ylabel('Average GPA');

% Step 4: Age Distribution
figure;
histogram(Ages, 'FaceColor', 'g', 'EdgeColor', 'k');
title('Age Distribution');
xlabel('Age');
ylabel('Frequency');