a1=[4.9176 5.0208 4.5429 4.5573 5.0597 3.891 5.898 5.6039 15.4202 14.4598 5.8282 5.3003 6.2712 5.9592...
    5.05 5.6039 8.2464 6.6969 7.7841 9.0384 5.9894 7.5422 8.7951 6.0931 8.3607 8.14 9.1416 12]';
a2=[ones(1,8) 2.5 2.5 ones(1,6) 1.5 1.5 1.5 1 1 1.5 1.5 1.5 1.5 1 1.5 1.5]';
a3=[3.472 3.531 2.275 4.05 4.455 4.455 5.85 9.52 9.8 12.8 6.435 4.9883 5.52 6.666 5 9.52 5.15 6.092 7.102...
    7.8 5.52 4 9.89 6.7265 9.15 8 7.3262 5]';
a4=[0.998 1.5 1.175 1.232 1.121 0.988 1.24 1.501 3.42 3 1.225 1.552 0.975 1.121 1.02 1.501 1.664 1.488...
    1.376 1.5 1.256 1.69 1.82 1.652 1.777 1.504 1.831 1.2]';
a5=[1 2 1 1 1 1 1 0 2 2 2 1 1 2 0 0 2 1.5 1 1.5 2 1 2 1 2 2 1.5 2]';
a6=[7 7 6 6 6 6 7 6 10 9 6 6 5 6 5 6 8 7 6 7 6 6 8 6 8 7 8 6]';
a7=[4 4 3 3 3 3 3 3 5 5 3 3 2 3 2 3 4 3 3 3 3 3 4 3 4 3 4 3]';
a8=[42 62 40 54 42 56 51 32 42 14 32 30 30 32 46 32 50 22 17 23 40 22 50 44 48 3 31 30]';
a9=[3 1 2 4 3 2 2 1 2 4 1 1 1 2 4 1 4 1 2 3 4 1 1 4 1 1 4 3]';
a10=[ones(1,11) 2 2 1 1 1 1 1 1 3 1 1 1 1 1 3 1 1]';
a11=[0 0 0 0 0 0 1 0 1 1 0 0 0 0 1 0 0 1 0 0 1 0 1 0 1 0 0 1]';
A=[ones(28,1) a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11];
b=[25.9 29.5 27.9 25.9 29.9 29.9 30.9 28.9 84.9 82.9 35.9 31.5 31 30.9...
    30 28.9 36.9 41.9 40.5 43.9 37.5 37.9 44.5 37.9 38.9 36.9 45.8 41]';
[m,n]=size(A);
Q=culculateQ(A);
Q1=zeros(m,n);
Q1=Q(1:m,1:n);
c1=Q1'*b;
R=zeros(n);
R=culculateR(A);
x=utriangle(R,c1,n)