function V_Value = V(xValue,Length,qValue,pValue)

      V_Value(Length) = 0.0; %Size the output to match the input

for i = 1:(Length)
    
    V_Value(i) =  -i*qValue; %positive q makes a negative slope on the v Graph
    if(i<(xValue))
        
        V_Value(i) = V_Value(i)+pValue; % The point load changes the shear force 
        %from its location to the support on the left by its value so it is
        %simply added in here.
     
    end
end

