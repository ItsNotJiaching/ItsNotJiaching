%% Setup and Definitions
% EK301, Section A1, Group BBB: Christopher Hyun, Anthony Kim, Jiaxing
% Wang, 04/05/2024.
%
% Code last edited April 26, 2024 1:43PM
clear; clc;
load("TrussDesign1f_HyunKimWang_A1.mat"); %2.2.5 load input file provided

%% Constructing Equilibrium Equations

% This following code helps us generate the A matrix we need
[num_joints, num_membs] = size(C);
C_x = C;
C_y = C;

% Helps keep track of member lengths for total cost
memb_lengths = zeros([1, num_membs]);

% every column multiply by distance unit vec
% find unit vec by getting the position of second joint subtracted by
% position of first joint and divide by distance formula (sqrt of x1-x2^2 + y1-y2^2)
% [A][T] = [L]
for i = 1:num_membs
    % This gives us the positions of each member in contact with the joint.
    vecpos = find(C(:, i));
    x1 = X(vecpos(1));
    x2 = X(vecpos(2));
    y1 = Y(vecpos(1));
    y2 = Y(vecpos(2));
    % This below gives us the length of each member
    r = norm([x2-x1, y2-y1]);
    memb_lengths(i) = r;
    % This scalar multiplies each column with the unit vector
    C_x(:, i) = ((x2-x1)/r) .* C_x(:, i);
    C_y(:, i) = ((y2-y1)/r) .* C_y(:, i);
    % negates second nonzero value in every column
    C_x(vecpos(2), i) = -C_x(vecpos(2), i); 
    C_y(vecpos(2), i) = -C_y(vecpos(2), i); 
end
% A should have 2j rows and m+3 cols; a (2j)x(m+3) matrix
A = [C_x Sx; C_y Sy];
% T is the load on each member/reaction
T = A\L;

%% Output
disp('\% EK301 A1, Team Broken Bridge Brothers, April 2024')

% Load equals the biggest number in the L vector
fprintf('Simulated Load: %.2f ozf\n\n', max(L));

% Load on Member Forces
memberforcesload = '';
for i = 1:(num_membs)
    % Checking if member is in Tension or Compression
    % then adding the necessary tex
    % if torc > 0, member is in tension
    % if torc < 0, member is in compression
    % if torc = 0, member is zero-force member
    if (sign(T(i)) > 0)
        torctext = '(T)';
    elseif (sign(T(i)) < 0)
        torctext = '(C)';
    else
        torctext = '';
    end
    
    % formatting all into text
    membertext = sprintf('m%d: %.3f %s', i, abs(T(i)), torctext);
    memberforcesload = sprintf('%s%s\n', memberforcesload, membertext);
end
fprintf('Member forces in ozf:\n%s\n', memberforcesload)

% Reactionary Forces
% Always going to be 3 reactionary forces at the end of T vector
fprintf('Reactionary forces in ozf:\n');
fprintf('Sx1: %.3f\n', T(end-2));
fprintf('Sy1: %.3f\n', T(end-1));    
fprintf('Sy2: %.3f\n\n', T(end));

% Cost of Truss
% Material Costs: 10$/joint : 1$/in of material
tot_cost = sum(memb_lengths) + 10*num_joints;
fprintf('Cost of Truss: $%.2f\n', tot_cost);

% Buckling Point P_crit
P_crit = 3054.789 * (memb_lengths.^-2.009);
P_crit_unc = 1.36;
pct_unc = P_crit_unc ./ P_crit;
% Ratio R
live_load = max(L);
R = T(1:end-3)' ./ live_load;
% Failure Weight
W_fail = P_crit ./ R;
% Critical failure member is the one with lowest failure weight
% Lowest failure weight is also our max load
max_load = max(W_fail(W_fail < 0)); % max() used here since input all -
crit_memb = find(W_fail==max_load);
max_load_unc = abs(pct_unc(crit_memb) * max_load);

% Cost Efficiency
efficiency = abs(max_load)/tot_cost;
fprintf(['Member %.0f is the critical member.\nThe failure load is ' ...
    '%.2f +- %.2f ozf, or %.2f +- %.2f N.\nThat''s %.2f g of load.\n'], ...
    crit_memb, max_load, max_load_unc, ...
    max_load/3.5969, max_load_unc/3.5969, abs(max_load*28.3495))
fprintf('Theoretical max load/cost ratio: %.3f ozf/$\n\n', efficiency);

% Print Member Lengths
disp("Member Lengths")
fprintf("m%d: %.2f in\n", [(1:num_membs)' memb_lengths']')

% First Contigency
next_max_load = max(setdiff(W_fail(W_fail<0), max_load));
fprintf('\nNext member(s) to fail:\n')
fprintf('Member %.0f at load %.2f ozf\n', ...
    [find(W_fail==next_max_load)' W_fail(W_fail==next_max_load)']')

%% Requirement Checking
% Warning to see if truss doesn't match requirement
if num_membs ~= (2*num_joints-3)
    fprintf("WARNING: Truss has %d joints and %d members, " + ...
        "fails relation M=2J-3!\n", num_joints, num_membs);
end
if (min(memb_lengths) < 6.99)
    fprintf("WARNING: Member %.0f is too short (%.2f in)!\n", ...
        [find(memb_lengths == min(memb_lengths))' ...
        memb_lengths(memb_lengths == min(memb_lengths))']')
end
if (max(memb_lengths) > 14)
    fprintf("WARNING: Member %.0f is too long (%.2f in)!\n", ...
        [find(memb_lengths == max(memb_lengths))' ...
        memb_lengths(memb_lengths == max(memb_lengths))']')
end
if (tot_cost > 300)
    disp("WARNING: Too expensive!")
end

%% Plotting Truss
close all; hold on;
for i=1:num_membs
    plot(X(find(C(:, i) == 1)), Y(find(C(:, i) == 1)), 'k', 'LineWidth', 2)
end
xlim([0, 31])
ylim([0, 31])
