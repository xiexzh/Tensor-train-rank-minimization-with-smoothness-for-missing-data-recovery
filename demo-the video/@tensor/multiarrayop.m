function C = multiarrayop(fname,A,B)
%MULTIARRAYOP Generic multidimensional array functions for tensors. 
%
%   MULTIARRAYOP(F,A,B) applies the multidimensional array function
%   specified by a function handle or function name, F, to the given
%   tensor arguments, A and B.  
%
%   Examples
%      C = multiarrayop(@plus,A,B) adds the two tensors A and B.
%
%   Copyright 2005, Tamara Kolda and Brett Bader, Sandia National Labs
%
%   See also TENSOR.

%Brett W. Bader and Tamara G. Kolda, Released under SAND2004-5189,
%Sandia National Laboratories, 2004.  Please address questions or
%comments to: tgkolda@sandia.gov.  Terms of use: You are free to copy,
%distribute, display, and use this work, under the following
%conditions. (1) You must give the original authors credit. (2) You may
%not use or redistribute this work for commercial purposes. (3) You may
%not alter, transform, or build upon this work. (4) For any reuse or
%distribution, you must make clear to others the license terms of this
%work. (5) Any of these conditions can be waived if you get permission
%from the authors.


% Consider scalar arguments
if numel(A.data) == 1
    sz = size(B);
else
    sz = size(A);
end

C = feval(fname, A.data, B.data);
C = tensor(C, sz);

