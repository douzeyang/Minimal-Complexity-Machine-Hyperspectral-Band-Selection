load data_botswana.txt
load output;

pkg load statistics

% Balanced Error Rate(BER)
BER = balancedErrorRate(testing_labels, output);
%     % F-score
%stats = F_Stats(testing_labels, output); 

save -ascii "msr_mcm" BER
