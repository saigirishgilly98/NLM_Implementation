%====================================================
% demo
%==================================================
%---------------------------------------------------
% This is a comparision of two implemantations of nonlocal means filter
% (NLM) for image denoising. Matlab funciton "fast_nl_means" is our
% fast implementation by using convolution, and "NLmeansfilter" is the
% classical implementation.
%---------------------------------------------------


% Any problems and advises are welcome .
% Email: love_truth@126.com,
% 2009-02-12



clear all;
iptsetpref('ImshowBorder','tight');
% load test image
timg=1;
switch timg
    case 1
        x0=double(imread('Cameraman256.png'));
    case 2
        x0=double(imread('lena.png'));
end


% add noise
randn('state',0)
sigma=25; % variance of noise
x=x0+sigma*randn(size(x0));
figure(1), imshow(x,[])
disp(['psnr of noisy image=' num2str(psnr(x,x0)) 'dB'])

%--------parameters-------------
% delta for convergence control
f=2;   % radius of square patch 
t=10;   %searching range in each direction
%=======================================



%=======================================
% tic
% [output]=NLmeansfilter(x,t,f,sigma);
% toc
% figure(1), imshow(output,[])
% disp(['psnr of denoising output=' num2str(psnr(output,x0)) 'dB'])

%========================================

tic
[dx]=fast_nl_means(x,f,t,sigma);
toc
figure(1), imshow(dx,[])
disp(['psnr of denoising output=' num2str(psnr(dx,x0)) 'dB'])
