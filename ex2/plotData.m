%function plotData(data, X, y)
function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
%A = data.*y;
%B = data.*(1-y);
%#len = size(y,1)
%#for i=1:len
%#while exist
%#  if A(i,3)==0
%#    A(i,:)=[];
%#    i = i-1;
%#    len = len - 10
%#  end
%#end
%#  if B(i,3)==0
%#    B(i,:)=[]
%#  end
%#A
%#B
%#plot(X,y)
%plot(A(:,1), A(:,2), 'k+');
%hold on;
%plot(B(:,1), B(:,2), 'ko');
% Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y == 0);
% Plot Examples
plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, ...
     'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', ...
     'MarkerSize', 7);






% =========================================================================



hold off;

end
