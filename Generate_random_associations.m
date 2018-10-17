%input = STA(2).associated_AP
%input2 = STA(1).associated_AP
%inputc = cat(2,input,input2)
for L = 1:1000

    rng('shuffle');
    [rew,STA,AP] = Main(4,30,[randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2]),randi([1 2])],1)
    for K= 1:30
        if K==1
            inp = STA(K).associated_AP
            INPT = array2table(inp)
            INTT = INPT
        end
        inp = STA(K).associated_AP
        INPT = array2table(inp)
        INTT = [INTT ; INPT]
        %in = cat (2,inp,STA(K).associated_AP)

    end
    INTT([1],:) = [];
    INTTI = table2array(INTT)
    INTT = array2table(INTTI')
    Assoc = table2array(INTT)

    %INTTII =array2table (INTT')
    dlmwrite ('Associations.csv', Assoc, 'delimiter',',', '-append');
    dlmwrite ('Rewards.csv', rew, 'delimiter',',', '-append');
end