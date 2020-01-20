%%Neighborhood pixel processing
clc; clear;close all;
a=imread('cameraman.tif');
% row=number of rows in a and col is number of columns.
[row,col]=size(a);
%padding zeros 
b=padarray(a,[1,1],0);
%intialize an 1D array to store the values of 8 neighborhood pixel.
c=zeros(8,0);
%%
%storing valuse of all the 8 pixel in c.
for ii=2:row+1
    for jj=2:col+1
       
      if b(ii,jj+1)-b(ii,jj)>0 
          c(1)=1;
      else
          c(1)=0;
         
      end
      if b(ii-1,jj+1)-b(ii,jj)>0
          c(2)=1;
          
      else
          c(2)=0;
          
      end
      if b(ii-1,jj)-b(ii,jj)>0
          c(3)=1;
          
      else
          c(3)=0;
          
      end
      if b(ii-1,jj-1)-b(ii,jj)>0
          c(4)=1;
          
      else
          c(4)=0;
          
      end
      if b(ii,jj-1)-b(ii,jj)>0
          c(5)=1;
          
      else
          c(5)=0;
          
      end
      if b(ii+1,jj-1)-b(ii,jj)>0
          c(6)=1;
          
      else
          c(6)=0;
          
      end
      if b(ii+1,jj)-b(ii,jj)>0
          c(7)=1;
          
      else
          c(7)=0;
          
      end
      if b(ii+1,jj+1)-b(ii,jj)>0
          c(8)=1;
          
      else
          c(8)=0;
          
      end
      %store the net value at b(ii,jj)
      b(ii,jj)=bi2de(c);%binary to decimal conversion
        
        
    end
end
%%
final=zeros(row,col);
final=b(2:end-1,2:end-1);
figure
subplot(1,2,1)
imshow(a)
subplot(1,2,2)
imshow(final)

