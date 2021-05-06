function V_Value = V(x)
% MECH 325 ****************************************************
% Example of calculating shear force V
%   q is assumed positive down (assumed given as a function q(x))
%   V is assumed positive down when looking from right to left
%
% Author: M. Negahban
% Date: 3/5/2021
% *************************************************************

    NP = size(x); %Get number of values in the array x
    V_Value(NP) = 0.0; %Size the output to match the input

    %Calculate the output values for each item in x
    for i = NP(1):NP(2)
        %First calcualte the integral of q using MatLab integration
        %function
        V_Value(i) = -integral(@q,0,x(i)); 

        %Add total of point loads to left of point
        if(x(i)<10)
            V_Value(i) = -((V_Value(i))^2)/5 ; % One point load jump of +25 (i.e, load pointing up) for x<20
        elseif(x(i)<40)
            V_Value(i) = (V_Value(i)); %Two point load jumps of +25 and -30 for x>=20 and x<40 (i.e., could just put -5)
        else
            V_Value(i) =  V_Value(i) ; %Three jumps of +25, -30 and +25 from x>=40 (i.e., could just put +20)
        end
    end
end

