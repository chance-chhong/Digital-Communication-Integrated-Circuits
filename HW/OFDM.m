clear all;close all;clc;

% **********************************************************
%     Plot Control
% **********************************************************
show_QAM_Map     = 0; % show or not : 1 => on , 0 => off
    
plot_part1       = 0; % plot or not : 1 => on , 0 => off
plot_part2       = 1;
plot_part3       = 0;
plot_part4       = 0;
plot_part5       = 0;

plot_Bouns_CFO   = 0;
plot_Bouns_SCO   = 0;
% ==============================================================================================================================================
% ====================================================      OFDM System Parameter Setting       ================================================
% ==============================================================================================================================================
SEED           = 123;
rng (SEED);
QAM_Data_len   = 1e6;
FFT_len        = 512;
GI_len         = 128;
QAM_Mode       = '64QAM';

% Data Gen
M              = str2double(QAM_Mode(1:end-3));
Bitstream_len  = QAM_Data_len * log2(M); % Data Bitstream length
DATA           = randi([0 1],1,Bitstream_len);

% **********************************************************
%     Modulation
% **********************************************************
d     = 2; % QAM Mapping point distance
Eavg  = (M-1)*d^2/6; % symbol energy

switch QAM_Mode
       case '16QAM'
           QAM_map_pt = [2 3 1 0 6 7 5 4 14 15 13 12 10 11 9 8];
       case '64QAM'
           QAM_map_pt = [4  5  7  6  2  3  1  0  12 13 15 14 10 11 9  8 ...
                         28 29 31 30 26 27 25 24 20 21 23 22 18 19 17 16 ...
                         52 53 55 54 50 51 49 48 60 61 63 62 58 59 57 56 ...
                         44 45 47 46 42 43 41 40 36 37 39 38 34 35 33 32];
       otherwise
           disp('QAM NUN: No Defined');
end
Temp.Data_Bitstream = reshape(DATA,[log2(M),QAM_Data_len]);    %  QAM_Data_len = Bitstream_len / log2(M)
QAM_Data            = qammod(Temp.Data_Bitstream,M, QAM_map_pt,'InputType','bit','UnitAveragePower',true , PlotConstellation = show_QAM_Map); % setting : PlotConstellation = true
clear Temp;

% De_QAM_Data         = qamdemod(QAM_Data,M, QAM_map_pt,'OutputType','bit',UnitAveragePower = true);
% isequal ( DATA, reshape(De_QAM_Data,1,[]) );

% **********************************************************
%     IFFT
% **********************************************************
FFT_frame_num      = floor(length(QAM_Data)/FFT_len)+1;
padding_len        = (FFT_frame_num)*FFT_len - QAM_Data_len;
QAM_Data_parallel  = [QAM_Data QAM_Data(1:padding_len)];

% Serial to Parallel
IFFT_in_TX  = reshape(QAM_Data_parallel,[FFT_len FFT_frame_num]);

% IFFT
IFFT_out_TX = ifft(IFFT_in_TX,FFT_len); % normalize by FFT_len

% Insert Guard Interval
GI       = IFFT_out_TX(1:GI_len,:);

% Parallel to Serial
OFDM_Sym = reshape([IFFT_out_TX;GI],1,[]);

% ***********************************************************************
% Part (1) : simulate the BER with AWGN for SNR 5,10,20,25 dB
% ***********************************************************************
SNR_dB  = 5:5:25;
SNR_lin = 10.^(SNR_dB/10);
ber_sim = zeros(1,length(SNR_dB));
err_sim = zeros(1,length(SNR_dB));

for i = 1:length(SNR_dB)
% AWGN Channel
       sigma     = sqrt(Eavg/SNR_lin(i)) ;   % noise standard deviation
       noise     = sigma*randn(1,length(OFDM_Sym));
       % r_sig     = OFDM_Sym + noise;
       r_sig     = awgn(OFDM_Sym,SNR_dB(i),'measured');
% Serial to Parallel
       r_sig_parallel  = reshape(r_sig,[(FFT_len + GI_len)  FFT_frame_num]);

% Remove GI
       FFT_in_RX       = r_sig_parallel(1:FFT_len,:);
    
% FFT
       FFT_out_RX      = fft(FFT_in_RX,FFT_len);

% Parallel to Serial
       QAM_sym         = reshape(FFT_out_RX,1,[]);

% De-Mapping
       Temp.De_QAM_Data   = qamdemod(QAM_sym,M, QAM_map_pt,'OutputType','bit',UnitAveragePower = true);
       De_QAM_Data        = reshape(Temp.De_QAM_Data(:,1:QAM_Data_len),1,[]);
       clear Temp;

% BER
       [err_num(i), ber_sim(i)] = symerr(DATA,De_QAM_Data); %#ok<SAGROW>

end

if (plot_part1)
% Fitting Curve
       SNR_dB_fit  = 5:1:25; %#ok<*UNRCH>
       ber_sim_fit = zeros(1,length(SNR_dB_fit));
       err_sim_fit = zeros(1,length(SNR_dB_fit));
       for i = 1:length(SNR_dB_fit)
              % AWGN Channel
                     r_sig           = awgn(OFDM_Sym,SNR_dB_fit(i),'measured');
              % Serial to Parallel
                     r_sig_parallel  = reshape(r_sig,[(FFT_len + GI_len)  FFT_frame_num]);
              % Remove GI
                     FFT_in_RX       = r_sig_parallel(1:FFT_len,:);
              % FFT
                     FFT_out_RX      = fft(FFT_in_RX,FFT_len);
              % Parallel to Serial
                     QAM_sym         = reshape(FFT_out_RX,1,[]);
              % De-Mapping
                     Temp.De_QAM_Data   = qamdemod(QAM_sym,M, QAM_map_pt,'OutputType','bit',UnitAveragePower = true);
                     De_QAM_Data        = reshape(Temp.De_QAM_Data(:,1:QAM_Data_len),1,[]);
                     clear Temp;
              % BER
                     [err_sim_fit(i) ber_sim_fit(i)] = symerr(DATA,De_QAM_Data);
       end
       figure;
       semilogy(SNR_dB,ber_sim,'*',SNR_dB_fit,ber_sim_fit,'-','markersize',8,'linewidth',2);
       xlabel('SNR in dB'); ylabel('BER'),title([num2str(M),'-QAM Data BER Simulation'],'FontSize',18); 
       legend('Simulation BER','Curve Fitting');
       grid on
       set(gcf,'color','w');
       set(gca,'fontsize',18);
end

% *********************************************************************************************
% Part (2) : Using Cyclic-Prefix for GI, with symbol boundary error 
%            estimation of 3/5 length of total CP, discuss the result (constellation variation).
% *********************************************************************************************
bound_err_ratio = 3/5;
sym_bound_err   = round(GI_len*bound_err_ratio);
SNR_dB          = 50;

% AWGN Channel
r_sig           = awgn(OFDM_Sym,SNR_dB,'measured');

% ERROR boundary
% =================================================
r_sig_STO       = circshift(r_sig,-sym_bound_err);
% =================================================

% Serial to Parallel
r_sig_parallel  = reshape(r_sig_STO,[(FFT_len + GI_len)  FFT_frame_num]);

% Remove GI
FFT_in_RX       = r_sig_parallel(1:FFT_len, :);

% FFT
FFT_out_RX      = fft(FFT_in_RX,FFT_len);

% Parallel to Serial
QAM_sym         = reshape(FFT_out_RX,1,[]);

if (plot_part2)
       figure;
       scatter(real(QAM_sym),imag(QAM_sym),'MarkerEdgeColor',[0 .5 .5],'MarkerFaceColor',[0 .7 .7]);
       title(['CP for GI with Sym Boundary Error of ',num2str(bound_err_ratio) ,' length of GI']);
       xlabel('In-Phase'); ylabel('Quadrature');
       set(gcf,'color','w');set(gca,'fontsize',18);axis square;

       figure;
       scatter(real(QAM_sym(1:FFT_len:end)),imag(QAM_sym(1:FFT_len:end)),'MarkerEdgeColor',[0 .5 .5],'MarkerFaceColor',[0 .7 .7]);
       hold on;grid on
       scatter(real(QAM_sym(2:FFT_len:end)),imag(QAM_sym(2:FFT_len:end)),'MarkerEdgeColor',[1 .1 .1],'MarkerFaceColor',[1 .4 .4]);
       title(['STO Constellation with CP : Sym Boundary Error =',num2str(bound_err_ratio) ,' length of GI']);
       xlabel('In-Phase'); ylabel('Quadrature');
       legend('First Subcarrier','Second Subcarrier');
       set(gcf,'color','w');set(gca,'fontsize',18);axis square;
end

% *********************************************************************************************
% Part (3) : Repeat part (2) with zero-padding for GI.
% *********************************************************************************************
OFDM_Sym_zero_GI = reshape([IFFT_out_TX;zeros(GI_len,FFT_frame_num)],1,[]);
bound_err_ratio  = 3/5;
sym_bound_err    = round(GI_len*bound_err_ratio);
SNR_dB           = 50;

% AWGN Channel
r_sig           = awgn(OFDM_Sym_zero_GI,SNR_dB,'measured');

% ERROR boundary
% =================================================
r_sig_STO       = circshift(r_sig,-sym_bound_err);
% =================================================

% Serial to Parallel
r_sig_parallel  = reshape(r_sig_STO,[(FFT_len + GI_len)  FFT_frame_num]);

% Remove GI
FFT_in_RX       = r_sig_parallel(1:FFT_len, :);

% FFT
FFT_out_RX      = fft(FFT_in_RX,FFT_len);

% Parallel to Serial
QAM_sym         = reshape(FFT_out_RX,1,[]); %#ok<NASGU>

if (plot_part3)
       figure;
       scatter(real(QAM_sym),imag(QAM_sym),'MarkerEdgeColor',[0 .5 .5],'MarkerFaceColor',[0 .7 .7]);
       title(['Zero Padding for GI with Sym Boundary Error of ',num2str(bound_err_ratio) ,' length of GI']);
       xlabel('In-Phase'); ylabel('Quadrature');
       set(gcf,'color','w');set(gca,'fontsize',18);axis square;

       figure;
       scatter(real(QAM_sym(1:FFT_len:end)),imag(QAM_sym(1:FFT_len:end)),'MarkerEdgeColor',[0 .5 .5],'MarkerFaceColor',[0 .7 .7]);
       hold on;grid on
       scatter(real(QAM_sym(2:FFT_len:end)),imag(QAM_sym(2:FFT_len:end)),'MarkerEdgeColor',[1 .1 .1],'MarkerFaceColor',[1 .4 .4]);
       title(['STO Constellation with Zero Padding : Sym Boundary Error =',num2str(bound_err_ratio) ,' length of GI']);
       xlabel('In-Phase'); ylabel('Quadrature');
       legend('First Subcarrier','Second Subcarrier');
       set(gcf,'color','w');set(gca,'fontsize',18);axis square;
end
% *******************************************************************************************************
% Part (4) : Adding both root raised cosine pulse shaping filter at Tx and Rx with roll-off factor 0.3
% *******************************************************************************************************
rolloff = 0.3;      % Rolloff factor
span    = 12;       % Filter span in symbols
sps     = 1;        % Samples per symbol (oversampling factor)
h_rrc   = rcosdesign(rolloff, span, sps,"sqrt");

EbNo    = 50;
snr     = convertSNR(EbNo,'ebno', ...
                     samplespersymbol = sps, ...
                     bitspersymbol = log2(M));

% TX raised cosine pulse shaping filter
OFDM_Sym_h_rrc    = upfirdn([IFFT_out_TX;GI], h_rrc, sps ,1);

% AWGN Channel
Recived_sig       = awgn(OFDM_Sym_h_rrc,snr,'measured');

% RX raised cosine pulse shaping filter
Temp.rxFiltSignal = upfirdn(Recived_sig,h_rrc,1,sps);   % Downsample and filter
RX_FiltSig        = Temp.rxFiltSignal(span + 1:end - span , :); % Account for delay
clear Temp;

% Remove GI
FFT_in_RX       = RX_FiltSig(1:FFT_len, :);

% FFT
FFT_out_RX      = fft(FFT_in_RX,FFT_len);

% Parallel to Serial
QAM_sym         = reshape(FFT_out_RX,1,[]);

if (plot_part4)
       figure;
       scatter(real(QAM_sym),imag(QAM_sym),'MarkerEdgeColor',[0 .5 .5],'MarkerFaceColor',[0 .7 .7]);
       title('PSF + RRC Constellation with CP');
       xlabel('In-Phase'); ylabel('Quadrature');
       set(gcf,'color','w');set(gca,'fontsize',18);axis square;
end
% **************************************************************************************************************
% Part (5) : Calculate the PAPR (each symbol) and plot the complementary cumulative distribution function (CCDF).
% **************************************************************************************************************
PAPR          = max(abs(IFFT_out_TX).^2)./mean(abs(IFFT_out_TX).^2);
[ccdf PAPR_n] = ecdf(PAPR);

if (plot_part5)
       figure;
       semilogy(PAPR_n,1-ccdf,'-','markersize',8,'linewidth',2);
       xlabel('Probability'); ylabel('PAPR'),title('CCDF of PAPR','FontSize',18); 
       set(gcf,'color','w');
       set(gca,'fontsize',18);
end

% ********************************************
% Bouns : CFO
% ********************************************
osc_freq_offset_ppm = [5 10 20];
total_offset_ppm    = 2*osc_freq_offset_ppm;
SNR_dB              = 1000;

% TX raised cosine pulse shaping filter
rolloff             = 0.3;      % Rolloff factor
span                = 12;       % Filter span in symbols
sps                 = 4;        % Samples per symbol (oversampling factor)
h_rrc               = rcosdesign(rolloff, span, sps,"sqrt");
OFDM_Sym_h_rrc      = upfirdn([IFFT_out_TX;GI], h_rrc, sps ,1);

% AWGN Channel
r_sig               = awgn(OFDM_Sym_h_rrc,SNR_dB,'measured');
k                   = 1:1:length(r_sig(1,:));
carry_freq          = 2*pi / length(r_sig(1,:)) * k.' ;

for i = 1:length(total_offset_ppm)
% CFO Effect
% =============================================================================================
       r_sig_CFO    = ((r_sig.') .* exp(1j*2*pi*(total_offset_ppm(i)/10^6) * ...
                                        carry_freq / sps .* (1:length(r_sig(:,1))))).';
% =============================================================================================

% RX raised cosine pulse shaping filter
       Temp.rxFiltSignal = upfirdn(r_sig_CFO,h_rrc,1,sps);   % Downsample and filter
       RX_FiltSig        = Temp.rxFiltSignal(span + 1:end - span , :); % Account for delay
       clear Temp;

% Remove GI
       FFT_in_RX       = RX_FiltSig(1:FFT_len, :);

% FFT
       FFT_out_RX      = fft(FFT_in_RX,FFT_len);

% Parallel to Serial
       QAM_sym(i,:)    = reshape(FFT_out_RX,1,[]);
end

if (plot_Bouns_CFO)

       for i=1:length(total_offset_ppm)
              figure;
              for frame_idx = 1: floor(length(QAM_sym(i,:))/FFT_len/2)  % where 2 is meaningless, just for Constellztion resolution
                     plot(QAM_sym(i,1+(frame_idx-1)*FFT_len:frame_idx*FFT_len),'.');hold on;
              end
              title(['Constellztion with CFO = ',num2str(total_offset_ppm(i)),' ppm']);
              xlabel('In-Phase'); ylabel('Quadrature');
              set(gcf,'color','w');set(gca,'fontsize',18);axis square;
       end
end

% ********************************************
% Bouns : SCO
% ********************************************
% Parallel to Serial
OFDM_bitstream = reshape(OFDM_Sym_h_rrc,1,[]);

% AWGN Channel
r_sig          = awgn(OFDM_bitstream,SNR_dB,'measured');

for i=1:length(total_offset_ppm)
% SCO Effect
% =============================================================================================
       r_sig_resample = resample( resample(r_sig,1e6+total_offset_ppm(i)*sps,1e5) ,1,10);
       T_SCO          = (1:1:length(r_sig)) * (1+total_offset_ppm(i)*sps/1e6);
       r_sig_SCO      = r_sig_resample([floor(T_SCO)]);
% =============================================================================================

% Serial to Parallel
       r_sig_SCO_Parallel = reshape(r_sig_SCO,[length(OFDM_Sym_h_rrc(:,1)) FFT_frame_num]);

% RX raised cosine pulse shaping filter
       Temp.rxFiltSignal = upfirdn(r_sig_SCO_Parallel,h_rrc,1,sps);   % Downsample and filter
       RX_FiltSig        = Temp.rxFiltSignal(span + 1:end - span , :); % Account for delay
       clear Temp;

% Remove GI
       FFT_in_RX       = RX_FiltSig(1:FFT_len, :);

% FFT
       FFT_out_RX      = fft(FFT_in_RX,FFT_len);

% Parallel to Serial
       QAM_sym(i,:)    = reshape(FFT_out_RX,1,[]);
end
if (plot_Bouns_SCO)
       for i=1:length(total_offset_ppm)
              figure;
              for frame_idx = 1 : floor(length(QAM_sym(i,:))/FFT_len/20) % where 20 is meaningless, just for Constellztion resolution
                     plot(QAM_sym(i,1+FFT_len*(frame_idx-1):1:FFT_len*frame_idx),'.');hold on;
              end
              title(['Constellztion with SCO = ',num2str(total_offset_ppm(i))],' ppm');
              xlabel('In-Phase'); ylabel('Quadrature');
              set(gcf,'color','w');set(gca,'fontsize',18);axis square;
       end
end