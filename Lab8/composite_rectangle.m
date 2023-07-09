function I = composite_rectangle(f, a, b, n)
   h = (b-a)/n; % divide the interval into equal length subintervals
   sum = 0;
   for i=0:n-1
       sum = sum + f(a + (i + 1/2) * h);
   end
   I = h *  sum;
end