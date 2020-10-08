% Reading the image %
k = imread('cameraman.tif');
imtool(k, [])

% Converting it into double %
k = double(k);

% Adding the gaussian noise of standard deviation 5
k5 = k + 5 * randn(size(k));
imtool(k5, [])

% Adding the gaussian noise of standard deviation 10
k10 = k + 10 * randn(size(k));
imtool(k10, [])

% Adding the gaussian noise of standard deviation 15
k15 = k + 15 * randn(size(k));
imtool(k15, [])

% Adding the gaussian noise of standard deviation 20
k20 = k + 20 * randn(size(k));
imtool(k20, [])

% Adding the gaussian noise of standard deviation 25
k25 = k + 25 * randn(size(k));
imtool(k25, [])

% Applying NLmeans denoising method for image with noise of sd 5
nlm5 = NLmeansfilter(k5, 10, 2, 5);
imtool(nlm5, [])

% Applying Fast Nonlocal Means method for image with noise of sd 5
fast_nlm5 = fast_nl_means(k5, 2, 10, 5);
imtool(fast_nlm5, [])

% Applying Probabilistic Non Local Means method for image with noise of sd
% 5
p_nlm5 = PNLM(k5, 2, 10, 5, 1);
imtool(p_nlm5, [])

% Calculating PSNR for 3 versions of NLM method for image with noise of sd
% 5
disp(['psnr of denoising output using nlm on image with noise of sd 5 =' num2str(psnr(nlm5,k)) 'dB'])
disp(['psnr of denoising output using fast_nlm on image with noise of sd 5 =' num2str(psnr(fast_nlm5,k)) 'dB'])
disp(['psnr of denoising output using p_nlm on image with noise of sd 5 =' num2str(psnr(p_nlm5,k)) 'dB']) 

% Applying NLmeans denoising method for image with noise of sd 10
nlm10 = NLmeansfilter(k10, 10, 2, 10);
imtool(nlm10, [])

% Applying Fast Nonlocal Means method for image with noise of sd 10
fast_nlm10 = fast_nl_means(k10, 2, 10, 10);
imtool(fast_nlm10, [])

% Applying Probabilistic Non Local Means method for image with noise of sd
% 10
p_nlm10 = PNLM(k10, 2, 10, 10, 1);
imtool(p_nlm10, [])

% Calculating PSNR for 3 versions of NLM method for image with noise of sd
% 10
disp(['psnr of denoising output using nlm on image with noise of sd 10 =' num2str(psnr(nlm10,k)) 'dB'])
disp(['psnr of denoising output using fast_nlm on image with noise of sd 10 =' num2str(psnr(fast_nlm10,k)) 'dB'])
disp(['psnr of denoising output using p_nlm on image with noise of sd 10 =' num2str(psnr(p_nlm10,k)) 'dB'])

% Applying NLmeans denoising method for image with noise of sd 15
nlm15 = NLmeansfilter(k15, 10, 2, 15);
imtool(nlm15, [])

% Applying Fast Nonlocal Means method for image with noise of sd 15
fast_nlm15 = fast_nl_means(k15, 2, 10, 15);
imtool(fast_nlm15, [])

% Applying Probabilistic Non Local Means method for image with noise of sd
% 15
p_nlm15 = PNLM(k15, 2, 10, 15, 1);
imtool(p_nlm15, [])

% Calculating PSNR for 3 versions of NLM method for image with noise of sd
% 15
disp(['psnr of denoising output using nlm on image with noise of sd 15 =' num2str(psnr(nlm15,k)) 'dB'])
disp(['psnr of denoising output using fast_nlm on image with noise of sd 15 =' num2str(psnr(fast_nlm15,k)) 'dB'])
disp(['psnr of denoising output using p_nlm on image with noise of sd 15 =' num2str(psnr(p_nlm15,k)) 'dB'])

% Applying NLmeans denoising method for image with noise of sd 20
nlm20 = NLmeansfilter(k20, 10, 2, 20);
imtool(nlm20, [])

% Applying Fast Nonlocal Means method for image with noise of sd 20
fast_nlm20 = fast_nl_means(k20, 2, 10, 20);
imtool(fast_nlm20, [])

% Applying Probabilistic Non Local Means method for image with noise of sd
% 20
p_nlm20 = PNLM(k20, 2, 10, 20, 1);
imtool(p_nlm20, [])

% Calculating PSNR for 3 versions of NLM method for image with noise of sd
% 20
disp(['psnr of denoising output using nlm on image with noise of sd 20 =' num2str(psnr(nlm20,k)) 'dB'])
disp(['psnr of denoising output using fast_nlm on image with noise of sd 20 =' num2str(psnr(fast_nlm20,k)) 'dB'])
disp(['psnr of denoising output using p_nlm on image with noise of sd 20 =' num2str(psnr(p_nlm20,k)) 'dB'])

% Applying NLmeans denoising method for image with noise of sd 25
nlm25 = NLmeansfilter(k25, 10, 2, 25);
imtool(nlm25, [])

% Applying Fast Nonlocal Means method for image with noise of sd 25
fast_nlm25 = fast_nl_means(k25, 2, 10, 25);
imtool(fast_nlm25, [])

% Applying Probabilistic Non Local Means method for image with noise of sd
% 25
p_nlm25 = PNLM(k25, 2, 10, 25, 1);
imtool(p_nlm25, [])

% Calculating PSNR for 3 versions of NLM method for image with noise of sd
% 25
disp(['psnr of denoising output using nlm on image with noise of sd 25 =' num2str(psnr(nlm25,k)) 'dB'])
disp(['psnr of denoising output using fast_nlm on image with noise of sd 25 =' num2str(psnr(fast_nlm25,k)) 'dB'])
disp(['psnr of denoising output using p_nlm on image with noise of sd 25 =' num2str(psnr(p_nlm25,k)) 'dB'])