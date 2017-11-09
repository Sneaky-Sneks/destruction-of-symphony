





for i=311:length(d)
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