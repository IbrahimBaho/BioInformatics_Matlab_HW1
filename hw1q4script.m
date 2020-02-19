%% Test on toy example

seq1 = 'TACGGGTAT';
seq2 = 'GGACGTACG';

% perform alignment between seq1 and seq2 and output aligment results

%% Test on in?uenza viruses 

seqs = fastaread('hw1prob4.fa');

for i = 1:length(seqs)-1
   for j = (i+1):length(seqs)
       seq1 = seqs(i).Sequence;
       seq2 = seqs(j).Sequence;
       disp(['Alignment between ', seqs(i).Header(1:25), ' and ', seqs(j).Header(1:25)]);
        % perform alignment between seq1 and seq2 and output aligment results
   end
end