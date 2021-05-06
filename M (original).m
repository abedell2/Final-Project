function M_Value = M(x)
% MECH 325 ****************************************************
% Example of calculating bending moment M
%   q is assumed positive down (assumed given as a function q(x))
%   V is assumed positive down when looking from right to left
%   M is assumed to be positive CCW when looking from right to left
%
% Author: M. Negahban
% Date: 3/5/2021
% *************************************************************

    The_V = V(x); %Get the values of V at all points
    
    NP = size(x); %Get number of values in the array x
    M_Value(NP) = 0.0; %Size the output to match the input
    
    %Use trapazoidal rule to calculate integral of V (i.e., calculate the
    %area under the V graph)
    for i = NP(1)+1:NP(2)
        Dx = x(i)-x(i-1);
        M_Value(i)=M_Value(i-1)+0.5*(The_V(i)+The_V(i-1))*Dx;
    end

    %Calculate the output values for each item in x by adding any needed
    %jumps
    %Add the total jump due to point moments to the left of the point
    for i = NP(1):NP(2)
        %Add jumps due to point moments
        if(x(i)<20)
            M_Value(i) = M_Value(i) + 0; %One point moment jump of +0 (i.e, moment CW) for x<20
        elseif(x(i)<40)
            M_Value(i) = M_Value(i) + 0 + 0; %Two point moment jump of +0 and +0 for x>=20 and x<40 
                                     %(i.e., could just put equal to the sum of all prior jumps)
        else
            M_Value(i) = M_Value(i) + 0 + 0 + 0; % Three point moment jump of +0, +0 and +0  from x>=40 
                                    %(i.e., could just put equal to the sum of all prior jumps)
        end
    end
end

