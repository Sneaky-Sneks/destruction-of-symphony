[a1 fs] = audioread('drum.wav');
[a2 fs] = audioread('drum2.wav');
[a3 fs] = audioread('drums1.wav');
[a4 fs] = audioread('drums3.wav');
[a5 fs] = audioread('drums4.wav');
[a6 fs] = audioread('drums5.wav');
[a7 fs] = audioread('drums6.wav');
[n1 fs] = audioread('notdrums1.wav');
[n2 fs] = audioread('notdrums3.wav');
[n3 fs] = audioread('notdrums4.wav');
[n4 fs] = audioread('notdrums5.wav');
t = (length(n1)+length(n2)+length(n3)+length(n4)+length(a1)+length(a2)+length(a3)+length(a4)+length(a5)+length(a6)+length(a7))/fs;
C = vertcat(a1,a2,a3,a4,a5,a6,a7,n1,n2,n3,n4);
L = (C(:,1)+C(:,2)/2);
for i=1:t-1
    d(i) = miraudio(L((i-1)*fs*4+1:i*4*fs));
end
%%
for i=1:length(d)
    feature1=mirattacktime(d(i));
    feature2=mirbrightness(d(i));
    feature3=mirentropy(d(i));
    feature5=mirinharmonicity(d(i));
    feature6=mirpulseclarity(d(i));
    feature7=mirrolloff(d(i));
    fn1(1:2,1:2) = exportation(feature1);
    f1(i,1:2) = fn1(1,1:2);
    f2(i,1:2) = fn1(2,1:2);
    f3(i,1:2) = exportation(feature2);
    f4(i,1:2) = exportation(feature3);
    f5(i,1:2) = exportation(feature5);
    f6(i,1:2) = exportation(feature6);
    f7(i,1:2) = exportation(feature7);
end
