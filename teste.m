n = 5000;
x = gallery('dorr', n);

A = zeros(n, n);

for i = 1 : n
   
    for j = 1 : n
       
        if i == j || i == (j - 1) || i == (j + 1)
           A(i, j) = x(i, j);         
        
        else
           A(i, j) = 0; 
        end
                
        
    end
    
end


A = A * 0.001 / 2.8;

savefile = 'matrizA5000x5000.txt';
save(savefile, 'A', '-ascii');

x = randn(n, 1);
b = A * x;

savefile = 'vetorb5000.txt';
save(savefile, 'b', '-ascii');