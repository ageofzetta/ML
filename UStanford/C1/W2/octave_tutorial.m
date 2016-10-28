% Arithmetic Operations

x = 5 + 6
y = 4 - 1
z = 3 * 2
w = 1 / 2 
r = 2 ^ 6

% Logical Operations

1 == 2 % If a == b
2 ~= 3 % if a != b
1 && 0 % if a AND b
1 || 0 % If a OR b
xor(1,0) % If a OR b but not both

PS1('~ >') % Changes prompt
a = 1; % Semicolon supresses output
a  % outputs variable just by referencing it
disp(a)

format long % Changes format of decimals
pi
format short % Changes format of decimals
pi

% Matrices
% Matrices are written wrapped in square brackets
% Columns are separated by commas and rows by semicolons
M = [1,2;3,4;5,6];
% Yields 
%  [ 1 2 ]
%  | 3 4 |  3 x 2 Matrix
%  [ 5 6 ]

row_vector = [ 1,  2,  3 ];
row_vector % Yields row vector [1,2,3]

col_vector = [1; 2;  2; ];
col_vector
% Yields Column Vector:
% [ 1 ]
% | 2 |
% [ 3 ]

% Even spaced vectors
% v = 2:0.5:3 first argument is starting number, last is final
% middle is spacing size

spaced_vector = 1:0.5:4;
spaced_vector

% Basics
x = 1;
y = 2;
theta1 = pi;
v_row_concatenate           =   [1,3,5,7,9,11]; 
v_column_concatenate        =   [2;4;6;8;10;12];
v_row_concatenate_2nth_el   =   v_row_concatenate(2);
v_row_concatenate(2)        =   6; %reassign index 2 of v_row_concatenate
