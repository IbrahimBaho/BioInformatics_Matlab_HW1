% This script tests all functions required in HW1.q2

%%
getReverseComp('ACGTGCA')

%%
findStartCodon('AATGTATGA')


%%

findStopCodon('ATAAGTAGGA')

%%
findLongestORF('GGAGGCGTAAAATGCGTACTGGTAATGCAAACTAATGG')

% the correct ORF starts at index 12 (for ATG at 12:14, and ends at 35, for
% TAA at 33:35.

%%

seq=fastaread('sequence.fa');
dna=seq.Sequence;

disp(['seq header: ', seq.Header])

str=sprintf('Base frequency on + strand:\n A %d\n C %d\n G %d \n T %d\n', baseFreq(dna));
disp(str);
dna2=getReverseComp(dna);

str=sprintf('Base frequency on - strand:\n A %d\n C %d\n G %d \n T %d\n', baseFreq(dna2));
disp(str);

%%

disp(sprintf('Number of possible start codons on + strand: %d\n', length(findStartCodon(dna))))
disp(sprintf('Number of possible stop codons on + strand: %d\n', length(findStopCodon(dna))))
disp(sprintf('Number of possible start codons on - strand: %d\n', length(findStartCodon(dna2))))
disp(sprintf('Number of possible stop codons on - strand: %d\n', length(findStopCodon(dna2))))

%%

%%
orf_pos = findLongestORF(dna);
orf_neg = findLongestORF(dna2);
disp('Longest ORF on + strand:')
disp(orf_pos);
disp('Longest ORF on - strand:')
disp(orf_neg);

%% in-script function to calc the frequency of ACGT.
function freq = baseFreq(dna)
bases = 'ACGT';
for i = 1:length(bases)
    freq(i) = length(strfind(dna, bases(i)));
end
% converts to fraction
%freq = freq / sum(freq);
end

