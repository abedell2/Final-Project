function M_Value = M(xValue,Length,qValue,pValue)

%This function integrates the vales in the V array using the trapezoid
%method because using the integral command was far too difficult.

    The_V = V(xValue,Length,qValue,pValue); %Get the values of V at all points
    
    M_Value(Length) = 0.0 ; %Size the output to match the input
    
    %Use trapazoidal rule to calculate integral of V 
    newLength = 1:Length;
   
     for i = 2:Length
         
          Dx = newLength(i)-newLength(i-1);
         M_Value(i)=M_Value(i-1)+0.5*(The_V(i)+The_V(i-1))*Dx;
     end

    
end

