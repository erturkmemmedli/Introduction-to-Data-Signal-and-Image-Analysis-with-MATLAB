function dist = standard_deviation_distance(v,x)  
    signed = x - mean(v)
    dist = signed / std(v)
end

v = [10 12 14];
x = 7;
dist = standard_deviation_distance(v,x)% =-2.5
